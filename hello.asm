; Disassembly of file: hello.o
; Tue Dec  1 22:29:56 2020
; Type: COFF32
; Syntax: NASM
; Instruction set: 80386


global _main: function

extern _printf                                          ; near
extern _getenv                                          ; near
extern ___main                                          ; near


SECTION .text                                            ; section number 1, code

.text:  ; Local function

_main:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        and     esp, 0FFFFFFF0H                         ; 0003 _ 83. E4, F0
        sub     esp, 16                                 ; 0006 _ 83. EC, 10
        call    ___main                                 ; 0009 _ E8, 00000000(rel)
        mov     dword [esp], ?_001                      ; 000E _ C7. 04 24, 00000000(d)
        call    _getenv                                 ; 0015 _ E8, 00000000(rel)
        mov     dword [esp+4H], eax                     ; 001A _ 89. 44 24, 04
        mov     dword [esp], ?_002                      ; 001E _ C7. 04 24, 00000005(d)
        call    _printf                                 ; 0025 _ E8, 00000000(rel)
        nop                                             ; 002A _ 90
        leave                                           ; 002B _ C9
        ret                                             ; 002C _ C3

        nop                                             ; 002D _ 90
        nop                                             ; 002E _ 90
        nop                                             ; 002F _ 90


SECTION .data                          ; section number 2, data


SECTION .bss                           ; section number 3, bss


SECTION .rdata                         ; section number 4, const

?_001:                                                  ; byte
        db 50H, 41H, 54H, 48H, 00H                      ; 0000 _ PATH.

?_002:                                                  ; byte
        db 45H, 6EH, 76H, 32H, 3AH, 20H, 25H, 73H       ; 0005 _ Env2: %s
        db 00H, 00H, 00H                                ; 000D _ ...


SECTION .rdata$zzz                     ; section number 5, const

        db 47H, 43H, 43H, 3AH, 20H, 28H, 4DH, 69H       ; 0000 _ GCC: (Mi
        db 6EH, 47H, 57H, 2EH, 6FH, 72H, 67H, 20H       ; 0008 _ nGW.org 
        db 47H, 43H, 43H, 2DH, 36H, 2EH, 33H, 2EH       ; 0010 _ GCC-6.3.
        db 30H, 2DH, 31H, 29H, 20H, 36H, 2EH, 33H       ; 0018 _ 0-1) 6.3
        db 2EH, 30H, 00H, 00H                           ; 0020 _ .0..


