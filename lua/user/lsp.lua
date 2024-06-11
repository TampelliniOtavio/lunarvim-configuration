lvim.lsp.automatic_servers_installation = false

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "intelephense" })

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "phpactor"
end, lvim.lsp.automatic_configuration.skipped_servers)

require("lvim.lsp.manager").setup("marksman")
