
local color_groups = require("tonada.highlights").groups

if vim.g.colors_name then
  vim.cmd.hi("clear")
else
end
vim.g.colors_name = "tonada"
vim.o.background = "dark"
vim.o.termguicolors = true

local highlight_name = ""
local highlight_group = {}


---@param hl_name  string  color group name
---@param hl_group table   values for the background/foreground colors
local function set_highlight_groups(hl_name, hl_group)
  vim.api.nvim_set_hl(0, hl_name, hl_group)
end

for i, element in pairs(color_groups) do
  if i % 2 == 0 then
    highlight_group = element
    set_highlight_groups(highlight_name, highlight_group)
  else
    highlight_name = element
  end
end

