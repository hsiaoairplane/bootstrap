syn on
set nu
set hlsearch
set ts=4
set sw=4
set mouse=nv
color torte
set t_Co=256
let g:molokai_original = 1

"open TrinityToggleNERDTree

""" Trinity """

" Open and close all the three plugins on the same time 
nmap <F9>  :TrinityToggleAll<CR> 

" Open and close the Source Explorer separately 
nmap <F10>  :TrinityToggleSourceExplorer<CR> 

" Open and close the Taglist separately 
nmap <F11> :TrinityToggleTagList<CR> 

" Open and close the NERD Tree separately 
nmap <F12> :TrinityToggleNERDTree<CR>  

"""""""""""""""

""" cscope  """

if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  set cspc=3
  "add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
  else
    let cscope_file=findfile("cscope.out",".;")
    let cscope_pre=matchstr(cscope_file,".*/")
    if !empty(cscope_file) && filereadable(cscope_file)
        exe "cs add" cscope_file cscope_pre
    endif
  endif
  set csverb
endif

nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>

"""""""""""""""
