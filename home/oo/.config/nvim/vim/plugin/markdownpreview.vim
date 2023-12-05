" NEOVIM config, a text editor based on vim.
" Maintainer:	 Jessee Chan <CYPHER0@foxmail.com>
" Last Change: 2023.05.05


function OpenMarkdownPreview (url)
  execute "silent ! firefox --new-window " . a:url
  endfunction
let g:mkdp_browserfunc = 'OpenMarkdownPreview'
let g:mkdp_browser      = 'firefox'
let g:mkdp_page_title   = '「${name}」'
let g:mkdp_filetypes    = ['markdown']
let g:mkdp_auto_start   = 0
let g:mkdp_auto_close   = 1
let g:mkdp_refresh_slow = 0


