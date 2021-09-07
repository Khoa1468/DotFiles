call plug#begin('~/AppData/Local/nvim/plugged')

"{{ Themes }}
  Plug 'joshdick/onedark.vim' 									" Dark theme
  Plug 'arcticicestudio/nord-vim'
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/everforest'

"{{ File browser }}
  Plug 'preservim/nerdTree' 									" File browser  
  Plug 'Xuyuanp/nerdtree-git-plugin' 							" Git status
  Plug 'ryanoasis/vim-devicons' 								" Icon
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"{{ File search }}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 			" Fuzzy finder 
  Plug 'junegunn/fzf.vim'

"{{ Status bar }}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

"{{ Terminal }}
  Plug 'voldikss/vim-floaterm' 									" Float terminal

"{{ Code intellisense }}
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 				" Language server 
  Plug 'jiangmiao/auto-pairs' 									" Auto pairs
  Plug 'alvan/vim-closetag' 									" 
  Plug 'mattn/emmet-vim' 				
  Plug 'm-pilia/vim-ccls'
	Plug 'neovim/nvim-lspconfig'
	" Plug 'hrsh7th/nvim-compe'
	" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update


"{{ Code syntax highlight }}
  Plug 'yuezk/vim-js' 											" Javascript
  Plug 'MaxMEllon/vim-jsx-pretty' 								" JSX/React syntax highlight
  Plug 'jackguo380/vim-lsp-cxx-highlight' 						" C++ syntax highlight
  
"{{ Debugging }}
  Plug 'puremourning/vimspector' 									" Vimspector

"{{ Source code version control }}
  Plug 'tpope/vim-fugitive' 										" Git

call plug#end()
