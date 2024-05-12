nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nmap j gj
nmap k gk
nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamed

exmap back obcommand app:go-back
nmap <C-k> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward
noremap :W :w