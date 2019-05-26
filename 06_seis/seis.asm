global _start

_start:
  ; call to label "func" & push location of next instruction onto stack
  call func
  mov eax, 1      ; 1 is sys_exit (this is the next instruction pushed)
  int 0x80        ; perform system call

func:             ; define label "func"
  mov ebx, 42     ; move 42 into ebx
  ; pop into eax the return location that call op pushed onto stack
  pop eax
  jmp eax         ; jump back to that location