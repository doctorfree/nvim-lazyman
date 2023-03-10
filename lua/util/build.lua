-- Ugly code to generate some things for the readme
local Docs = require("lazy.docs")
local Util = require("lazy.util")

local M = {}
local root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h:h:h")

---@return ReadmeBlock
function M.keymaps()
  local keymap_set = vim.keymap.set
  ---@type table<string,{mode?:string|string[], keys:string, desc?:string, i:number, group:string}>
  local keymaps = {}
  ---@type string
  local group = nil
  ---@type string[]
  local groups = {}
  local function map(mode, lhs, rhs, opts)
    if not (opts and opts.desc) then
      return
    end
    if not vim.tbl_contains(groups, group) then
      groups[#groups + 1] = group
    end
    mode = mode == nil and { "n", "v", "o" } or type(mode) == "string" and { mode } or mode
    local desc = opts and opts.desc or ""
    local key = lhs .. desc .. group
    if keymaps[key] then
      vim.list_extend(keymaps[key].mode, mode)
    else
      keymaps[key] = { mode = mode, keys = lhs, desc = desc, i = vim.tbl_count(keymaps), group = group }
    end
  end
  vim.keymap.set = map

  group = "General"
  dofile(root .. "/lua/config/keymaps.lua")
  group = "LSP"
  local lsp = dofile(root .. "/lua/plugins/lsp/keymaps.lua")
  for _, keys in ipairs(lsp.get()) do
    map(keys.mode or "n", keys[1], keys[2], keys)
  end
  vim.keymap.set = keymap_set

  group = "Plugins"

  local core = require("lazy.core.plugin").Spec.new({ import = "plugins" })
  Util.foreach(core.plugins, function(name, plugin)
    group = ("[%s](%s)"):format(plugin.name, plugin.url)
    for _, key in ipairs(plugin.keys or {}) do
      if type(key) == "table" and key.desc then
        local desc = key.desc or ""
        map(key.mode or "n", key[1], key[2], { desc = desc })
      end
    end
  end)

  ---@type string[]
  local lines = {}

  for _, group in ipairs(groups) do
    lines[#lines + 1] = "## " .. group
    lines[#lines + 1] = ""
    vim.list_extend(lines, { "| Key | Description | Mode |", "| --- | --- | --- |" })
    local mappings = vim.tbl_filter(function(m)
      return m.group == group and m.desc
    end, keymaps)

    table.sort(mappings, function(a, b)
      return a.i < b.i
    end)

    for _, m in ipairs(mappings) do
      lines[#lines + 1] = "| <code>"
        .. m.keys:gsub(">", "&gt;"):gsub("<", "&lt;"):gsub("|", "&vert;")
        .. "</code> | "
        .. m.desc
        .. " | "
        .. table.concat(
          vim.tbl_map(function(mode)
            return "**" .. mode .. "**"
          end, m.mode),
          ", "
        )
        .. " |"
    end
    lines[#lines + 1] = ""
  end
  return { content = table.concat(lines, "\n") }
end

function M.plugins(path)
  local test = root .. "/lua/plugins/" .. path
  local spec = require("lazy.core.plugin").Spec.new(dofile(test))
  local source = Util.read_file(test)
  local parser = vim.treesitter.get_string_parser(source, "lua")

  ---@type {code: string, opts: string, name: string, comment?:string, url: string}[]
  local plugins = {}

  local function get_text(node)
    return Docs.fix_indent(vim.treesitter.get_node_text(node, source))
  end

  local function get_field(node, field)
    for child in node:iter_children() do
      if child:type() == "field" then
        local name_node = child:field("name")[1]
        if name_node and get_text(name_node) == field then
          return child:field("value")[1]
        end
      end
    end
  end

  local function find_plugins(node)
    if node:type() == "string" then
      local text = vim.treesitter.query.get_node_text(node, source):sub(2, -2)
      if text:find("/") and #node:parent():field("name") == 0 then
        local plugin_node = node:parent():parent()
        if plugin_node:named_child(0):field("value")[1]:id() ~= node:id() then
          plugin_node = node
        end
        local comment_node = plugin_node:parent():prev_named_sibling()
        if comment_node and comment_node:type() ~= "comment" then
          comment_node = nil
        end

        local opts_node = get_field(plugin_node, "opts")

        local name_node = get_field(plugin_node, "name")
        local name = name_node and get_text(name_node):sub(2, -2) or text:match("/(.*)$")

        if spec.plugins[name] then
          plugins[#plugins + 1] = {
            name = name,
            url = "https://github.com/" .. text,
            code = get_text(plugin_node),
            comment = comment_node and get_text(comment_node) or nil,
            opts = opts_node and get_text(opts_node) or get_field(plugin_node, "config") and "{}" or nil,
          }
        end
      end
    end
    for child in node:iter_children() do
      find_plugins(child)
    end
  end

  parser:parse()
  parser:for_each_tree(function(tree)
    local node = tree:root()
    find_plugins(node)
    -- print(vim.treesitter.query.get_node_text(node, str))
  end)

  ---@type string[]
  local lines = {
    [[
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';
]],
  }

  for _, plugin in ipairs(plugins) do
    lines[#lines + 1] = "## [" .. plugin.name .. "](" .. plugin.url .. ")"

    if plugin.comment then
      lines[#lines + 1] = ""
      lines[#lines + 1] = table.concat(
        vim.tbl_map(function(line)
          return line:gsub("^%-+", "")
        end, vim.split(plugin.comment, "\n")),
        "\n"
      )
      lines[#lines + 1] = ""
    end
    vim.list_extend(lines, {
      "",
      "<Tabs>",
    })
    vim.list_extend(lines, {
      "",
      [[<TabItem value="opts" label="Options">]],
      "",
      "```lua",
      "opts = " .. (plugin.opts or "nil"),
      "```",
      "",
      "</TabItem>",
      "",
    })
    vim.list_extend(lines, {
      "",
      [[<TabItem value="code" label="Full Spec">]],
      "",
      "```lua",
      plugin.code,
      "```",
      "",
      "</TabItem>",
      "",
    })
    vim.list_extend(lines, {
      "</Tabs>",
      "",
    })
  end
  return { content = table.concat(lines, "\n") }
end
-- M.extract_opts("neovim/nvim-lspconfig")

return M
