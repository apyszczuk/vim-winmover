" vim-winmover - Move windows easily
"
" Author:     Artur Pyszczuk <apyszczuk@gmail.com>
" License:    Same terms as Vim itself
" Website:    https://github.com/apyszczuk/vim-winmover

if exists ('g:loaded_winmover')
    finish
endif
let g:loaded_winmover = 1

command! -nargs=+ MoveAbove :call winmover#move_window_above(<f-args>)
command! -nargs=+ MoveBelow :call winmover#move_window_below(<f-args>)
command! -nargs=+ MoveLeft  :call winmover#move_window_left(<f-args>)
command! -nargs=+ MoveRight :call winmover#move_window_right(<f-args>)
