vim.api.nvim_create_augroup("lvim_user", {})

lvim.autocommands = {
 {
    { "BufWinEnter", "BufRead", "BufNewFile" },
    {
      group = "lvim_user",
      pattern = "*",
      command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
    },
  },
}

