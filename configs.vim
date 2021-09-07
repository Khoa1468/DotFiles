"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a 				" Enable mouse
set tabstop=2 				" 
set shiftwidth=2 			" 
set listchars=tab:\|\ 		" Tab charactor 
set list
set foldmethod=indent 		" 
set foldlevelstart=99 		"  
set number 					" Show line number
syntax on 					" Enable syntax hightlight
set ignorecase 				" Enable case-sensitive 

" Enable copying from vim to clipboard
if has('win32')
  set clipboard=unnamed 		 
else
  set clipboard=unnamedplus
endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
            \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color
colorscheme onedark

" Overwrite color highlight 
if (has("autocmd"))
  augroup colorextend
  	autocmd ColorScheme * call onedark#extend_highlight("Comment", { "fg": { "gui": "#728083" } })
  	autocmd ColorScheme * call onedark#extend_highlight("LineNr", { "fg": { "gui": "#728083" } })
  augroup END
endif

" Font 
let g:airline_powerline_fonts = 1 									" Enable 
if has('win32')
  set guifont=Fira\ Code\ Retina
endif
" Status bar
let g:airline_theme='onedark' 										" Theme OneDark
let g:airline#extensions#tabline#enabled = 1 						" Enable Tab bar
let g:airline#extensions#tabline#left_sep = ' ' 					" Enable Tab seperator 
let g:airline#extensions#tabline#left_alt_sep = '|' 				" Enable Tab seperator
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t' 					" Set Tab name as file name

let g:airline#extensions#whitespace#enabled = 0  					" Remove warning whitespace"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Code syntax highlight
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
let g:javascript_plugin_jsdoc = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Resize pane
nmap <M-Right> :vertical resize +1<CR> 		
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
language en                 " sets the language of the messages / ui (vim)

