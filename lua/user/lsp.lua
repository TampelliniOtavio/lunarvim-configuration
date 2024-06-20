lvim.lsp.automatic_servers_installation = false

require("lvim.lsp.manager").setup("marksman")

require("lvim.lsp.manager").setup("tailwindcss", {
  filetypes = {
    "html",
    "vue",
    "typescriptreact",
    "javascriptreact",
    "css",
    "blade",
    "astro"
  },
  tailwindCSS = {
    emmetCompletions = true
  }
})
