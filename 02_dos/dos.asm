global _start

section .data											; define string of bytes w/ content
	msg db "Hello, Clarice.", 0x0a	; 0x0a is byte for newline
	len equ $ - msg									; get length of string

section .text											; main code block
_start:
	mov eax, 4											; 4 is sys_write system call
	mov ebx, 1											; 1 is file descriptor for stdout
	mov ecx, msg										; bytes to write
	mov edx, len 										; number of byes to write
	int 0x80 												; perform syscall
	mov eax, 1											; 1 is sys_exit system call
	mov ebx, 0											; exit status is 0 (success)
	int 0x80												; perform syscall
	