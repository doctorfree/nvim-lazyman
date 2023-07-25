local M = {}

M.name = function(config, node, state)
  local common = require("neo-tree.sources.common.components")
  local highlights = require("neo-tree.ui.highlights")

  local highlight = config.highlight or highlights.FILE_NAME
  local text = node.name
  if node.type == "directory" then
    highlight = highlights.DIRECTORY_NAME
    if config.trailing_slash and text ~= "/" then
      text = text .. "/"
    end
  end

  if node:get_depth() == 1 and node.type ~= "message" then
    highlight = highlights.ROOT_NAME
    text = vim.fn.fnamemodify(text, ":p:h:t")
    text = string.upper(text)
  else
    local filtered_by = common.filtered_by(config, node, state)
    highlight = filtered_by.highlight or highlight
    if config.use_git_status_colors then
      local git_status = state.components.git_status({}, node, state)
      if git_status and git_status.highlight then
        highlight = git_status.highlight
      end
    end
  end

  if type(config.right_padding) == "number" then
    if config.right_padding > 0 then
      text = text .. string.rep(" ", config.right_padding)
    end
  else
    text = text .. " "
  end

  return {
    text = text,
    highlight = highlight,
  }
end

M.icon = function(config, node, state)
  local common = require("neo-tree.sources.common.components")
  local highlights = require("neo-tree.ui.highlights")

  local icon = config.default or " "
  local highlight = config.highlight or highlights.FILE_ICON
  if node.type == "directory" then
    highlight = highlights.DIRECTORY_ICON
    if node.loaded and not node:has_children() then
      icon = not node.empty_expanded and config.folder_empty or config.folder_empty_open
    elseif node:is_expanded() then
      icon = config.folder_open or "-"
    else
      icon = config.folder_closed or "+"
    end
  elseif node.type == "file" or node.type == "terminal" then
    local success, web_devicons = pcall(require, "nvim-web-devicons")
    if success then
      local devicon, hl = web_devicons.get_icon(node.name, node.ext)
      icon = devicon or icon
      highlight = hl or highlight
    end
  end

  local filtered_by = common.filtered_by(config, node, state)

  -- Don't render icon in root folder
  if node:get_depth() == 1 then
    return {
      text = nil,
      highlight = highlight,
    }
  end

  return {
    text = icon .. " ",
    highlight = filtered_by.highlight or highlight,
  }
end

return M
