if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    layout_strategy = 'flex',
    layout_config = {
      preview_cutoff = 1
    },
    mappings = {
      i = {
        ["<C-e>"] = actions.close,
        ["<C-s>"] = actions.select_vertical,
        ["<C-S-s>"] = actions.select_horizontal,
      },
      n = {
        ["<C-e>"] = actions.close,
        ["<C-s>"] = actions.select_vertical,
        ["<C-S-s>"] = actions.select_horizontal,
      },
    },
  }
}
EOF
