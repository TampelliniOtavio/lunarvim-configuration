vim.api.nvim_create_augroup("lvim_user", {})

local function setTabWidth(tab_size, pattern)
  return {
    { "BufEnter", "BufWinEnter" },
    {
      group = "lvim_user",
      pattern = pattern,
      command = "setlocal tabstop=" .. tab_size .. " shiftwidth=" .. tab_size .. " expandtab"
    }
  }
end

lvim.autocommands = {
 {
    { "BufWinEnter", "BufRead", "BufNewFile" },
    {
      group = "lvim_user",
      pattern = "*",
      command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
    },
  },
  setTabWidth(2, "*.lua"),
  setTabWidth(2, "*.md"),
}

