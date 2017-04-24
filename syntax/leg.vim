" Vim syntax file
" Language: LEG
" Maintainer: Lucas Cunha
" Latest Revision: 23 April 2017

if exists("b:current_syntax")
  finish
endif

syn match legFunction '\w\+'

syn keyword legKeywords mov set ld ldb st stb add sub cmp and or xor tst not shl shr sar rol ror rcl rcr jmp jc jnc jz jnz jo jno js jns jl jle jg jge ja jna push pop call ret in inb out outb pushf popf sys iret clc stc cli sti wait drop hlt

syn match legDirective '.org\|.skip\|.word\|.equ'
syn match legRegister '\<r\d\|sp\|ip\|fp\>'

syn keyword legTodo contained TODO FIXME NOTE
syn match legComment "@.*$" contains=legTodo

syn match legNumber '\x[x]\x*'

let b:current_syntax = "leg"

highlight link legTodo        Todo
highlight link legComment     Comment
highlight link legFunction    Function
highlight link legRegister    Type
highlight link legDirective   PreProc
highlight link legNumber      Constant
highlight link legKeywords    Keyword
