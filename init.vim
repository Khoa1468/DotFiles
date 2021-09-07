let nvim_global_dir = '~\AppData\Local\nvim\'

execute 'source '.nvim_global_dir.'plugins.vim'
execute 'source '.nvim_global_dir.'configs.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other plug-in's settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
let nvim_settings_dir = '~\AppData\Local\nvim\settings\'

execute 'source '.nvim_settings_dir.'coc.vim'
execute 'source '.nvim_settings_dir.'floaterm.vim'
execute 'source '.nvim_settings_dir.'nerdtree.vim'
execute 'source '.nvim_settings_dir.'fzf.vim'
execute 'source '.nvim_settings_dir.'vimspector.vim'
execute 'source '.nvim_settings_dir.'gSetMap.vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other scripts 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
let nvim_scripts_dir = '~\AppData\Local\nvim\scripts\'

" Enable auto close HTML tag
let g:closetag_html_style=1
execute 'source '.nvim_scripts_dir.'closetag.vim'

