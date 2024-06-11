lvim.plugins = {
  { 'jose-elias-alvarez/typescript.nvim' },
  {
    'folke/trouble.nvim',
    cmd = 'TroubleToggle',
  },
  {
    'folke/todo-comments.nvim',
    event = 'BufRead',
    config = function ()
      require('todo-comments').setup()
    end
  },
  {
    'folke/persistence.nvim',
    event = 'BufReadPre',
    config = function ()
      require('persistence').setup({
        dir = vim.fn.expand(vim.fn.stdpath 'state' .. '/sessions/'),
        options = { 'buffers', 'curdir', 'tabpages', 'winsize' }
      })
    end
  },
  { 'christoomey/vim-tmux-navigator' },
  {
    'phaazon/hop.nvim',
    config = function ()
        require('hop').setup()
    end
  },
  {
    'AckslD/nvim-trevJ.lua',
    config = 'require("trevj").setup()',
    init = function ()
        vim.keymap.set('n', '<leader>j', function ()
            require('trevj').format_at_cursor()
        end)
    end
  },
  {
    'haringsrob/laravel-dev-tools'
  },
  { 'jwalton512/vim-blade' },
  { 'neoclide/coc-html' },
  { 'yaegassy/coc-laravel' },
  { 'yaegassy/coc-blade' },
  {
    'kkoomen/vim-doge',
    build = ':call doge#install()',
  },
  { 'mattn/emmet-vim' },
  { 'alvan/vim-closetag' },
  { 'AndrewRadev/tagalong.vim' },
  {
    'nvim-telescope/telescope.nvim',
    config = function ()
      require('telescope').setup{
        defaults = {
          file_ignore_patterns = { 'node%_modules/.*', ".git/.*", "vendor/.*", ".github/.*" }
        }
      }
    end
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require"lsp_signature".on_attach() end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      require("gitblame").setup { enabled = false }
    end,
  },
  { "wuelnerdotexe/vim-astro" },
  { "wavded/vim-stylus" }
}

-- alvan/vim-closetag config
vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.blade.php'
vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
vim.g.closetag_filetypes = 'html,xhtml,phtml,php'
vim.g.closetag_xhtml_filetypes = 'xhtml,jsx,tsx'
vim.g.closetag_emptyTags_caseSensitive = 1
vim.g.closetag_regions['typescript.tsx'] = 'jsxRegion,tsxRegion'
vim.g.closetag_regions['javascript.jsx'] = 'jsxRegion'
vim.g.closetag_regions['typescriptreact'] = 'jsxRegion,tsxRegion'
vim.g.closetag_regions['javascriptreact'] = 'jsxRegion'
vim.g.closetag_shortcut = '>'

