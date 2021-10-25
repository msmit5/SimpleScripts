" This is designed to go into the vimrc file
" Insert Date and Time into document, separated by & for use with LaTeX
" This is a helper for the forensic analysis writing I typically do
inoremap <F3> <C-R>=strftime(" & %m/%d & %H:%M & ")<CR>
