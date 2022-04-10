if !exists('g:loaded_devicons') | finish | endif

lua << EOF
require'nvim-web-devicons'.setup {
    -- Personal icons to override
    override = {

        };
    -- Globally enable default icons
    default = true;
}
EOF
