" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" common
let mapleader=","
set helplang=cn
set fileencodings=8859-1,utf-8,gbk,cp936
set number
syntax enable
set laststatus=2
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch
set encoding=utf-8
set incsearch
set cursorline

" nerdtree 
nmap <C-e> :NERDTreeToggle<CR>

" tagbar
nmap <leader>tt :TagbarToggle<CR>
""let g:tagbar_left=1
""let g:tagbar_width=60

" airline
let g:airline#extensions#bufferline#enabled=0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=1
let g:airline#extensions#tabline#buffer_nr_show=1

" ycm
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" global & cscope
"" global:
set cscopeprg=gtags-cscope
cs add GTAGS
"" cscope:
"" 查找定义
nmap <C-c>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"" 查找调用本函数的函数
nmap <C-c>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"" 查找本函数调用的函数
nmap <C-c>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"" 查找本字符串
nmap <C-c>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"" 查找本文件
nmap <C-c>f :cs find f <C-R>=expand("<cword>")<CR><CR>
"" 查找包含本文件的文件
nmap <C-c>i :cs find i <C-R>=expand("<cword>")<CR><CR>
