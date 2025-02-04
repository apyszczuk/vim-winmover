if exists ('g:autoloaded_winmover')
    finish
endif
let g:autoloaded_winmover = 1

" TODO:
" to be able to use directly in command, src should be as '...', but then
" move_window_X does not work since mismatch in argument types.
" Handle both cases.
" <3
function! winmover#move_window(opts, dst, src)
    let l:src = winnr()
    if !empty(a:src)
        let l:src = a:src[0]
    endif

    call win_splitmove(l:src, a:dst, a:opts)
endfunction

function! winmover#move_window_above(dst, ...)
    call winmover#move_window({'vertical': '0', 'rightbelow': '0'}, a:dst, a:000)
endfunction

function! winmover#move_window_below(dst, ...)
    call winmover#move_window({'vertical': '0', 'rightbelow': '1'}, a:dst, a:000)
endfunction

function! winmover#move_window_left(dst, ...)
    call winmover#move_window({'vertical': '1', 'rightbelow': '0'}, a:dst, a:000)
endfunction

function! winmover#move_window_right(dst, ...)
    call winmover#move_window({'vertical': '1', 'rightbelow': '1'}, a:dst, a:000)
endfunction
