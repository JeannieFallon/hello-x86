global _start:

_start:
  sub esp, 4            ; allocate 4 bytes on stack (move pointer down)
  mov [esp], byte 'H'   ; move byte 'H' into first space allocated
  mov [esp+1], byte 'e' ; move byte 'e' into offset space (+1)
  mov [esp+2], byte 'y' ; repeat, offset +2
  mov [esp+3], byte '!' ; repeat, offset +3
  mov [esp+4], byte 0x0a  ; newline
  ; sys_write, stdout, and bytes to write
  mov eax, 4            ; 4 is sys_write
  mov ebx, 1            ; 1 is stdout file descript
  mov ecx, esp          ; set ecx to address that esp points to
  mov edx, 5            ; number of bytes to write
  int 0x80              ; perform system call
  ; sys_exit, exit status
  mov eax, 1            ; 1 is sys_exit
  mov ebx, 0            ; exit status is 0 (success)
  int 0x80              ; perform system call