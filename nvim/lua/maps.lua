local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Copy over word without losing buffer
keymap.set('x', '<leader>p', '\"_dP')

-- Yank to global clipboard
keymap.set('n', '<leader>y', '\"+y')
keymap.set('v', '<leader>y', '\"+y')
keymap.set('n', '<leader>Y', '\"+Y')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit<CR>')
-- Split window
keymap.set('n', 'sh', ':split<Return><C-w>w')
keymap.set('n', 'ss', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<leader>w', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Move highlighted lines
keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Move below line after current line, don't change cursor's place
keymap.set('n', 'J', "mzJ'z")

-- Keep cursor at the middle when jumping
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

-- Keep cursor at the middle when searching
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

-- Indent/unident selected block
keymap.set('v', '>', '>gv')
keymap.set('v', '<', '<gv')

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
