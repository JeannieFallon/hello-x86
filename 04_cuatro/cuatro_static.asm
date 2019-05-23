global _start
section .data             ; define a string
  addr db "yellow", 0x0a  ; variable 'addr' signfies a memory address
section .text
_start:                   ; main code block
  mov eax, 4              ; 4 is sys_write system call
  mov ebx, 1              ; 1 is stdout file descriptor
  mov ecx, addr           ; set ecx to where bytes to write are stored
  mov edx, 7              ; number of bytes to write (len of string + \n)
  int 0x80                ; system call (eax is currently sys_write)
  mov eax, 1              ; 1 is sys_exit system call
  mov ebx, 0              ; set exit status to 0
  int 0x80                ; system call (eax is currently sys_exit)