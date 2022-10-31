local keymap = vim.keymap

vim.g.mapleader = ','

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit<CR>')
-- Split window
keymap.set('n', 'sh', ':split<Return><C-w>w')
keymap.set('n', 'ss', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- trouble plugin
keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>',
  {silent = true, noremap = true}
)
keymap.set('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>',
  {silent = true, noremap = true}
)
keymap.set('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>',
  {silent = true, noremap = true}
)
keymap.set('n', '<leader>xl', '<cmd>TroubleToggle localist<cr>',
  {silent = true, noremap = true}
)
keymap.set('n', '<leader>xq', '<cmd>TroubleToggle quickfix<cr>',
  {silent = true, noremap = true}
)
keymap.set('n', '<leader>gR', '<cmd>TroubleToggle lsp_references<cr>',
  {silent = true, noremap = true}
)
