global _start

_start:
  call func       ; go to label 'func' & push next line to top of stack
  mov eax, 1      ; 1 is sys_exit
  int 0x80        ; peform system call

func:
  mov ebx, 42     ; move 42 into ebx
  ret             ; pop location off of stack, then jump there