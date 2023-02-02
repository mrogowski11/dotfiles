local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup {
  ui = {
        winblend = 10,
        border = 'rounded',
        colors = {
            normal_bg = '#002b36'
        }
  },
  server_filetype_map = {
    typescript = 'typescript',
    python = 'pyright'
  }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-f>', "<Cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", opts)
vim.keymap.set('n', '<C-b>', "<Cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", opts)
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
