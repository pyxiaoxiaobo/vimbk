set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"--------------------------------------------------------------------------
" let Vundle manage Vundle, required
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tmhedberg/SimpylFold'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'
Bundle "tpope/vim-surround"
Bundle 'Yggdroot/indentLine'
Bundle "tomasr/molokai"
Plugin 'chxuan/change-colorscheme'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jiangmiao/auto-pairs'
Bundle 'ryanoasis/vim-devicons'
Plugin 'ctrlpvim/ctrlp.vim'
Bundle 'tpope/vim-repeat'
Plugin 'will133/vim-dirdiff'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'sjl/gundo.vim'
Bundle 'thinca/vim-quickrun'
Bundle 'bronson/vim-trailing-whitespace'
"--------------------------------------------------------------------------
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"==================================================================================
nmap <Leader><Leader> V
nnoremap <CR> G
nnoremap <BS> gg
set backspace=2
set nu
set encoding=UTF-8
set t_Co=256
set background=dark
syntax on
"使用vim方向键来切换编辑窗口 Ctrl+H/J/K/L
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" 允许折叠
set foldmethod=indent
set foldlevel=99
" 允许用空格来折叠
nnoremap <space> za
let g:SimpylFold_docstring_preview=1
"au BufNewFile,BufRead *.py
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set smartindent
set fileformat=unix
let python_highlight_all=1
"set t_ti= t_te=
set showcmd
set hls
set completeopt=longest,menu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"set background=dark
colorscheme solarized
"colorscheme molokai
"--------------------------------------------------------------------------
"NERDTree
"--------------------------------------------------------------------------
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"nmap <Leader>tb :TagbarToggle<CR>      "快捷键设置
let g:tagbar_ctags_bin='ctags'          "ctags程序的路径
let g:tagbar_width=30                   "窗口宽度的设置
"--------------------------------------------------------------------------
"tarbar
"--------------------------------------------------------------------------
map <F3> :Tagbar<CR>
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  "如果是c语言的程序的话，tagbar自动开启
set helplang=cn
set encoding=utf-8
"indentLine 代码缩进线标志线
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
"映射到ctrl+i键
map <C-i> :IndentLinesToggle<CR>
"--------------------------------------------------------------------------
"youcompleteme
"--------------------------------------------------------------------------
"YouCompleteMe 配置
let g:ycm_global_ycm_extra_conf = '/home/niki/.ycm_extra_conf.py'
" let g:ycm_global_ycm_extra_conf = '/home/niki/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
let g:ycm_confirm_extra_conf=0   " 打开vim时不再询问是否加载ycm_extra_conf.py配置
"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
"回车即选中当前项
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? '<C-n>' : '<Down>'
inoremap <expr> <Up>       pumvisible() ? '<C-p>' : '<Up>'
inoremap <expr> <PageDown> pumvisible() ? '<PageDown><C-p><C-n>' : '<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '<PageUp><C-p><C-n>' : '<PageUp>
"Vim calls this "prefix" key the "leader". You can set your leader key to
"whatever you like.
let mapleader = ","
nnoremap <leader>gj :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
map <F8> :NextColorScheme<CR>
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double
set cursorline
set cursorcolumn
:set vb t_vb=

"--------------------------------------------------------------------------
"easymotion
"--------------------------------------------------------------------------
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

"--------------------------------------------------------------------------
"nerdcommenter
"--------------------------------------------------------------------------
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1


"--------------------------------------------------------------------------
"vim-airline
"--------------------------------------------------------------------------
let g:airline_theme="powerlineish"
"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1
 "打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1
"设置切换Buffer快捷键"
 nnoremap <C-tab> :bn<CR>
 nnoremap <C-s-tab> :bp<CR>
 " 关闭状态显示空白符号计数
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'
 " 设置consolas字体"前面已经设置过
 "set guifont=Consolas\ for\ Powerline\ FixedD:h11
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'

"--------------------------------------------------------------------------
"kien/rainbow_parentheses.vim
"--------------------------------------------------------------------------
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"--------------------------------------------------------------------------
"GUNDO[时光机]
"--------------------------------------------------------------------------
nnoremap <leader>h :GundoToggle<CR>

"--------------------------------------------------------------------------
"QUICKRUN[快速执行]
"--------------------------------------------------------------------------

let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}

let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
map <F5> :QuickRun<CR>
"--------------------------------------------------------------------------
"TRAILING-WHITESPACE[行尾空格处理]
"--------------------------------------------------------------------------
map <leader><space> :FixWhitespace<cr>
