nnoremap ro :set operatorfunc=RunOn<cr>g@
"vnoremap ro :<c-u>call RunOn(visualmode())<cr>
vnoremap ro :call RunOn(visualmode())<cr>

function! RunOn(text)
    let saved_unnamed_register = @@

    if a:text ==# 'v'
        execute "normal! `<v`>d"
    elseif a:text ==# 'char'
        execute "normal! `[v`]d"
    else
        return
    endif

    let cmd = PromptCmd()
    silent execute "r! " . cmd ." ". shellescape(@@)

    let @@ = saved_unnamed_register
endfunction

function! PromptCmd()
    call inputsave()
    let cmd = input('Command: ')
    call inputrestore()
    return cmd
endfunction
