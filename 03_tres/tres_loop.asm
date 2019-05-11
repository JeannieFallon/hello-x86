global _start

section .text
_start:
  mov ebx, 1    ; start ebx with value of 1
  mov ecx, 5    ; 5 will be number of iterations
loop:           ; set a label named 'loop'
  add ebx, 2    ; add 2 to value of ebx (will repeat 5 times)
  dec ecx       ; ecx -= 1
  cmp ecx, 0    ; compare value in ecx with 0
  jg loop       ; jump to 'loop' if ecx > 0
  mov eax, 1    ; this only evaluates when condition is false
  int 0x80      ; exit with expected ebx value of 11 