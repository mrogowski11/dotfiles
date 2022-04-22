function fish_user_key_bindings
  # peco
  bind \cr peco_select_history # Bind for peco select history to Ctrl+R
  bind \ct peco_select_file # Bind for peco select file to Ctrl+T
  bind \cy peco_change_directory # Bind for peco change directory to Ctrl+Y


  # vim-like
  bind \cl forward-char
  bind \ch backward-char

  # prevent iterm2 from closing when typing Ctrl-D (EOF)
  bind \cd delete-char
end
