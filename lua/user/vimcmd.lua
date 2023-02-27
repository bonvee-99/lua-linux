-- vim commands
vim.cmd([[
" closing tags
let g:closetag_filenames = '*x.html,*.jsx,*.tsx, *.vue'

colorscheme gruvbox

set guifont=DroidSansMono\ Nerd\ Font\ 18
set termguicolors

inoremap kj <Esc>

filetype on
filetype indent on
filetype plugin on
if has("syntax")
    syntax on
endif

" nerd tree
map <C-n> :NERDTreeToggle<CR> 
map <C-c> :NERDTreeClose<CR>
autocmd BufEnter NERD_tree_* | execute 'normal R'
let NERDTreeShowHidden=1

" close nerdtree if only tab remaining
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

hi Normal guibg=NONE ctermbg=NONE

" telescope
noremap <silent> ff :Telescope find_files<CR>
noremap <silent> fg :Telescope live_grep<CR>
noremap <silent> fb :Telescope buffers<CR>

" lightline
set noshowmode

let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ }

set clipboard+=unnamedplus

" copy to clipboard
nnoremap  <leader>y  "+y
vnoremap  <leader>y  "+y

" git gutter
let g:gitgutter_highlight_linenrs = 1
set updatetime=100
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = 'XX'

" vim split
set splitbelow splitright

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" resize
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" startify
let g:startify_session_dir = '~/.config/nvim/session'
" let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_custom_header = [
        \ '   _  __     _      ',
        \ '  / |/ /  __(_)_ _  ',
        \ ' /    / |/ / /  ` \ ',
        \ '/_/|_/|___/_/_/_/_/ ',
        \]
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [
            \ { 'v': '~/.config/nvim/lua/user' },
            \ ]
]])
