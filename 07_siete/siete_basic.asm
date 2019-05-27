global _start

_start:
  call greeting       ; go to label 'greeting'
  mov eax, 1          ; 1 is sys_exit
  mov ebx, 0          ; reset ebx
  int 0x80            ; perform system call (set to sys_exit)

greeting:
  mov ebp, esp        ; move value of esp into ebp (store top of stack)
  sub esp, 2          ; subtract 2 from esp (allocate 2 bytes on stack)
  mov [esp], byte 'H' ; move 'H' into 1st allocated byte
  mov [esp+1], byte 'i' ; move 'i' into 2nd allcated byte
  ; perform standard output
  mov eax, 4          ; 4 is sys_write
  mov ebx, 1          ; 1 is stdout file descriptor
  mov ecx, esp        ; move bytes to write into ecx
  mov edx, 2          ; number of bytes to write
  int 0x80            ; perform system call (set to sys_write)
  ; restore stack & return back to previous location of execution
  mov esp, ebp        ; move previously stored value back into esp
  ret                 ; go to location back on top of stack (in esp)
