global _start           ; define entry point using label
_start:

    mov eax, 1          ; move int value 1 into register eax
    mov ebx, 42         ; move int value 42 into register ebx
    int 0x80            ; exit
	