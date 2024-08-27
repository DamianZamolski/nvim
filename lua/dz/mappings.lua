local telescope = require('telescope.builtin')

local function map(mode, keys, command)
  vim.keymap.set(mode, keys, command, { noremap = true })
end

vim.g.mapleader = ' '
map('', '<leader>', '')
map('', '<c-s>', vim.lsp.buf.signature_help)
map('', '<leader>1', ':sort i<cr>')
map('', '<leader>2', ':sort!<cr>')
map('', '<leader>Y', '"+y$')
map('', '<leader>y', '"+y')
map('i', '<c-l>', vim.lsp.buf.completion)
map('n', '<a-j>', vim.diagnostic.goto_next)
map('n', '<a-k>', vim.diagnostic.goto_prev)
map('n', '<a-l>', vim.lsp.buf.code_action)
map('n', '<a-o>', vim.diagnostic.open_float)
map('n', '<c-j>', '<cmd>wincmd w<cr>')
map('n', '<c-k>', '<cmd>wincmd W<cr>')
map('n', '<c-t>', '<cmd>NvimTreeToggle<cr>')
map('n', '<leader><cr>', '<cmd>NvimTreeFindFile<cr>')
map('n', '<leader><esc>', '<cmd>nohlsearch<cr>')
map('n', '<leader>b', '<cmd>GitBlameToggle<cr>')
map('n', '<leader>c', '<cmd>close<cr>')
map('n', '<leader>D', '"_d$')
map('n', '<leader>d', '"_d')
map('n', '<leader>e', '<cmd>EslintFixAll<cr>')
map('n', '<leader>f', '<cmd>Neoformat<cr>')
map('n', '<leader>h', vim.lsp.buf.hover)
map('n', '<leader>j', '<cmd>cnext<cr>')
map('n', '<leader>k', '<cmd>cprevious<cr>')
map('n', '<leader>m', ':move.')
map('n', '<leader>Q', '<cmd>quit!<cr>')
map('n', '<leader>q', '<cmd>quit<cr>')
map('n', '<leader>r', vim.lsp.buf.rename)
map('n', '<leader>S', ':%substitute//g<left><left>')
map('n', '<leader>s', ':substitute//g<left><left>')
map('n', '<leader>W', '<cmd>wall<cr>')
map('n', '<leader>w', '<cmd>write<cr>')
map('n', 'g/', telescope.live_grep)
map('n', 'gb', telescope.buffers)
map('n', 'gd', vim.lsp.buf.definition)
map('n', 'gf', telescope.find_files)
map('n', 'gh', telescope.help_tags)
map('n', 'gi', vim.lsp.buf.implementation)
map('n', 'gq', telescope.quickfix)
map('n', 'gr', vim.lsp.buf.references)
map('n', 'gt', vim.lsp.buf.type_definition)