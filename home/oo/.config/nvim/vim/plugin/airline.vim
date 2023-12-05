" NEOVIM config, a text editor based on vim.
" Maintainer:	 Jessee Chan <CYPHER0@foxmail.com>
" Last Change: 2023.05.05


" NERDTree, a file system explorer for the Vim editor.
  autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Indentline, displaying thin vertical lines at each indentation level for code indented with spaces.
  let g:indentLine_char_list = ['|', '¦', '┆', '┊']
  let g:markdown_syntax_conceal=0


