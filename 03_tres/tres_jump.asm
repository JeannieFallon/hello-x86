global _start

section .text
_start:
  mov ebx, 42   ; set exit status to 42
  mov eax, 1    ; 1 is sys_exit system call
  jmp skip      ; unconditional jump to label 'skip'
  mov ebx, 13   ; this line is skipped so exit status is not changed to 13
skip:
  int 0x80      ; pass control to system call