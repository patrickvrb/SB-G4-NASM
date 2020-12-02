global _main 
extern _scanf 
extern _printf     



segment .data
    %defstr path %!PATH         ; The operating system PATH variable
    pa db path,10
    palen equ $-pa
    

segment .bss


segment .text

_main:

       mov eax,pa
       mov eax,4            ; The system call for write (sys_write)
       mov ebx,1            ; File descriptor 1 - standard output
       mov ecx,pa        
       mov edx,palen    
       syscall
       ret  
