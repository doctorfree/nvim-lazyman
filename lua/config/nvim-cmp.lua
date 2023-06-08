local settings = require("configuration")
local cmp = require("cmp")
local select_opts = { behavior = cmp.SelectBehavior.Select }

if not settings.enable_wilder then
  cmp.setup.cmdline("/", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = { { name = "buffer" } },
  })
  cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
  })
end
local snippet = {}
local mapping = {
  ["<Up>"] = cmp.mapping.select_prev_item(select_opts),
  ["<Down>"] = cmp.mapping.select_next_item(select_opts),
  ["<C-p>"] = cmp.mapping.select_prev_item(select_opts),
  ["<C-n>"] = cmp.mapping.select_next_item(select_opts),
  ["<C-u>"] = cmp.mapping.scroll_docs(-4),
  ["<C-d>"] = cmp.mapping.scroll_docs(4),
  ["<C-e>"] = cmp.mapping.abort(),
  ["<C-y>"] = cmp.mapping.confirm({ select = true }),
  ["<C-f>"] = cmp.mapping(function(fallback)
    fallback()
  end, { "i", "s" }),
  ["<C-b>"] = cmp.mapping(function(fallback)
    fallback()
  end, { "i", "s" }),
  ["<Tab>"] = cmp.mapping(function(fallback)
    local col = vim.fn.col(".") - 1

    if cmp.visible() then
      cmp.select_next_item(select_opts)
    elseif col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
      fallback()
    else
      cmp.complete()
    end
  end, { "i", "s" }),
  ["<S-Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item(select_opts)
    else
      fallback()
    end
  end, { "i", "s" }),
}
local item_menu = {
  nvim_lsp = "[LSP]",
  nvim_lua = "[Lua]",
  buffer = "[Buffer]",
  path = "[Path]",
}
local copilot_source = {}
local snippet_source = {}
if settings.enable_coding then
  if settings.enable_copilot_cmp then
    table.insert(item_menu, { copilot = "[Copilot]" })
    copilot_source = { name = "copilot",  keyword_length = 2 }
  end
  if settings.enable_snippets == "luasnip" then
    local luasnip = require("luasnip")
    table.insert(item_menu, { luasnip = "[Snippet]" })
    snippet_source = { name = "luasnip",  keyword_length = 2 }
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    }
    mapping = {
      ["<Up>"] = cmp.mapping.select_prev_item(select_opts),
      ["<Down>"] = cmp.mapping.select_next_item(select_opts),
      ["<C-p>"] = cmp.mapping.select_prev_item(select_opts),
      ["<C-n>"] = cmp.mapping.select_next_item(select_opts),
      ["<C-u>"] = cmp.mapping.scroll_docs(-4),
      ["<C-d>"] = cmp.mapping.scroll_docs(4),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<C-y>"] = cmp.mapping.confirm({ select = true }),
      ["<C-f>"] = cmp.mapping(function(fallback)
        if luasnip.jumpable(1) then
          luasnip.jump(1)
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<C-b>"] = cmp.mapping(function(fallback)
        if luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<Tab>"] = cmp.mapping(function(fallback)
        local col = vim.fn.col(".") - 1

        if cmp.visible() then
          cmp.select_next_item(select_opts)
        elseif col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
          fallback()
        else
          cmp.complete()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item(select_opts)
        else
          fallback()
        end
      end, { "i", "s" }),
    }
  elseif settings.enable_snippets == "snippy" then
    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    local snippy = require("snippy")
    table.insert(item_menu, { snippy = "[Snippet]" })
    snippet_source = { name = 'snippy' }
    snippet = {
      expand = function(args)
        snippy.expand_snippet(args.body)
      end,
    }
    mapping = {
      ["<Up>"] = cmp.mapping.select_prev_item(select_opts),
      ["<Down>"] = cmp.mapping.select_next_item(select_opts),
      ["<C-p>"] = cmp.mapping.select_prev_item(select_opts),
      ["<C-n>"] = cmp.mapping.select_next_item(select_opts),
      ["<C-u>"] = cmp.mapping.scroll_docs(-4),
      ["<C-d>"] = cmp.mapping.scroll_docs(4),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<C-y>"] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif snippy.can_expand_or_advance() then
          snippy.expand_or_advance()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif snippy.can_jump(-1) then
          snippy.previous()
        else
          fallback()
        end
      end, { "i", "s" }),
    }
  else
    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
    end

    mapping = {
      ["<Up>"] = cmp.mapping.select_prev_item(select_opts),
      ["<Down>"] = cmp.mapping.select_next_item(select_opts),
      ["<C-p>"] = cmp.mapping.select_prev_item(select_opts),
      ["<C-n>"] = cmp.mapping.select_next_item(select_opts),
      ["<C-u>"] = cmp.mapping.scroll_docs(-4),
      ["<C-d>"] = cmp.mapping.scroll_docs(4),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<C-y>"] = cmp.mapping.confirm({ select = true }),
      ['<C-Space>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      ['<Tab>'] = function(fallback)
        if not cmp.select_next_item() then
          if vim.bo.buftype ~= 'prompt' and has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end
      end,
      ['<S-Tab>'] = function(fallback)
        if not cmp.select_prev_item() then
          if vim.bo.buftype ~= 'prompt' and has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end
      end,
    }

    snippet = {
      expand = function(args)
        unpack = unpack or table.unpack
        local line_num, col = unpack(vim.api.nvim_win_get_cursor(0))
        local line_text = vim.api.nvim_buf_get_lines(0, line_num - 1, line_num, true)[1]
        local indent = string.match(line_text, '^%s*')
        local replace = vim.split(args.body, '\n', true)
        local surround = string.match(line_text, '%S.*') or ''
        local surround_end = surround:sub(col)

        replace[1] = surround:sub(0, col - 1)..replace[1]
        replace[#replace] = replace[#replace]..(#surround_end > 1 and ' ' or '')..surround_end
        if indent ~= '' then
          for i, line in ipairs(replace) do
            replace[i] = indent..line
          end
        end

        vim.api.nvim_buf_set_lines(0, line_num - 1, line_num, true, replace)
      end,
    }
  end
end

local confirm = cmp.mapping.confirm({
  select = false,
})
local confirm_copilot = cmp.mapping.confirm({
  select = false,
})

if settings.enable_copilot_cmp then
  confirm_copilot = cmp.mapping.confirm({
    select = true,
    behavior = cmp.ConfirmBehavior.Replace,
  })
end

mapping = vim.tbl_extend("force", mapping, {
  ["<CR>"] = function(...)
    local entry = cmp.get_selected_entry()
    if entry and entry.source.name == "copilot" then
      return confirm_copilot(...)
    end
    return confirm(...)
  end,
})

cmp.setup({
  snippet = snippet,
  window = {
    documentation = {
      border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
    },
    completion = {
      border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
    },
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, item)
      local icons = require("utils.icons").kinds
      item.kind = icons[item.kind]
      item.menu = (item_menu)[entry.source.name]
      return item
    end,
  },
  experimental = {
    native_menu = false,
    ghost_text = {
      enabled = true,
      hl_group = "Comment",
    },
  },
  mapping = mapping,
  performance = {
    debounce = 300,
    throttle = 60,
    fetching_timeout = 200,
  },
  sources = {
    copilot_source,
    { name = "path" },
    { name = "nvim_lsp", keyword_length = 2 },
    { name = "nvim_lua", keyword_length = 2 },
    { name = "buffer",   keyword_length = 3 },
    snippet_source,
  },
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = "buffer" },
  }),
})
