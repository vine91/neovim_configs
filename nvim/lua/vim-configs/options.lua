--[[
--  NOTE      - options.lua
--  Author    - Eira Chae
--
--  Created   - 2022.10.27
--  Github    - https://github.com/vine91
--  Contact   - vine9151@gmail.com
/]]



-- Local variables for option
local vimset = vim.opt



-- ========================= --
-- =      set options      =
-- ========================= --
vimset.title = true             --show title
vimset.number = true            --show line number
vimset.ruler = true             --show advences
vimset.showmatch = true         --show matching brace
vimset.laststatus = 2           --show status bar always

--set bs=indent,eol,start       --use backspace
--set mouse=a                   --use mouse as VISUAL MODE
--set ttymouse=sgr              --use mouse fix in WSL
--set nocompatible              --use arrow keys
--set esckeys                   --use ESC fix when mapping
vimset.hidden = true            --use fix Buffermove
vimset.wildmenu = true          --use tab automake list
vimset.wrap = false             --not use auto window size

vimset.cindent = true           --C style indent
vimset.autoindent = true        --auto indent
vimset.smartindent = true       --smart indent
vimset.expandtab = true         --insert space instead tab
vimset.shiftwidth = 4           --shift size 4 columns
vimset.softtabstop = 4          --tab size 4 columns
vimset.numberwidth = 5          --number off set size 5

--set visualbell                --show visually when bell was rung
--set laststatus                --remember 2 last status
vimset.wrapscan = true          --auto back when searching
vimset.ignorecase = true        --ignore CAPS when searching
vimset.incsearch = true         --keyword search increasing
vimset.hlsearch = true          --last search highlighting

vimset.encoding = 'utf-8'       --file encoding settings
vimset.fencs = 'utf-8,cp949,cp932,euc-jp,shift-jis,ucs-2le,latin1,big5'
vimset.clipboard = 'unnamedplus'
--set t_Co=256                  --theme settings
--set t_ut=



-- ========================= --
-- =     ctags options     =
-- ========================= --
vimset.tags = '/home/docker/work/gncs/tags'



-- ========================= --
-- =     other options     =
-- ========================= --
vim.cmd([[
    autocmd VimEnter * if &filetype ==# 'gitcommit' | echo 'gitcommit' | else | exec "normal \<F48>" | endif
    autocmd BufNewFile,BufReadPost Makefile set noexpandtab
    "autocmd BufWritePost *.c,*.h silent! !ctags -R &

    augroup gitcommit_autoclose
        autocmd!
        autocmd FileType gitcommit nnoremap <C-S> :wq<CR>
        autocmd FileType gitcommit inoremap <C-S> <ESC><ESC>:wq<CR>
        autocmd FileType gitcommit vnoremap <C-S> <ESC><ESC>:wq<CR>
    augroup END

    augroup help_as_buffer
        autocmd!
        autocmd FileType help exec "normal L"
        autocmd FileType help set buflisted
    augroup END

    syntax on
    "colorscheme codedark
]])
