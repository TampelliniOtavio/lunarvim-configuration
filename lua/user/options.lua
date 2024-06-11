vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt_global.shiftwidth = 4
vim.opt_global.tabstop = 4

vim.opt.relativenumber = true

vim.opt.shell = '/bin/zsh'

local function telescope_extension(telescope, name)
  pcall(telescope.load_extension, name)
end

lvim.builtin.telescope.on_config_done = function (telescope)
  telescope_extension(telescope, "frecency")
  telescope_extension(telescope, "neoclip")
  telescope_extension(telescope, "project")
end
