let nvim_global_dir = '~\AppData\Local\nvim\'
let nvim_config_dir = '~\AppData\Local\nvim\configPlugins\'
let nvim_scripts_dir = '~\AppData\Local\nvim\scripts\'

execute 'source '.nvim_global_dir.'plugins.vim'
execute 'source '.nvim_global_dir.'configs.vim'

execute 'source '.nvim_config_dir.'coc.vim'
execute 'source '.nvim_config_dir.'floaterm.vim'
execute 'source '.nvim_config_dir.'nerdtree.vim'
execute 'source '.nvim_config_dir.'fzf.vim'
execute 'source '.nvim_config_dir.'vimspector.vim'
execute 'source '.nvim_config_dir.'gSetMap.vim'

execute 'source '.nvim_scripts_dir.'closetag.vim'
