global _start

section .text
_start:
  mov ecx, 99   ; put value 99 into ecx
  mov ebx, 42   ; set exit status to 42
  mov eax, 1    ; 1 is sys_exit system call
  cmp ecx, 100  ; compare value of ecx to 100
  jl skip       ; jump if ecx is less than 100
  mov ebx, 13   ; this line skipped if condition is true
skip:
  int 0x80
