global _start
section .data             ; define a string
  addr db "yellow", 0x0a  
section .text
_start:                   ; main code block
  mov [addr], byte 'H'    ; move 'H' into addr, index 0 
  mov [addr+5], byte '!'  ; move '!' into addr, index 5
  mov eax, 4              ; 4 is sys_write
  mov ebx, 1              ; 1 is stdout file descriptor
  mov ecx, addr           ; set ecx to location of bytes to write
  mov edx, 7              ; length to write is 7 (including newline)
  int 0x80                ; system call (eax is currently sys_write)
  mov eax, 1              ; 1 is sys_exit
  mov ebx, 0              ; set exit status to 0
  int 0x80                ; system call (eax is currently sys_exit)
  