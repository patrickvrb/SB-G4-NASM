global _main 
extern _scanf 
extern _printf     

segment .data

msg db "Enter your ID", 0xA
len equ $ - msg

segment .bss

id resb 10

segment .text

global main
main: 
       push msg
       call printf