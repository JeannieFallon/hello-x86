global _start:

_start:
  ; TODO
  
  ; sys_write, stdout, and bytes to write
  mov eax, 4
  mov ebx, 1
  mov ecx, esp
  mov edx, 4
  int 0x80
  ; sys_exit, exit status
  mov eax, 1
  mov ebx, 0
  int 0x80