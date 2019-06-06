global _start

_start:
  ; call first function
  call first

  ; standard exit code

first:
  ; prologue

  ; TODO print "one"

  ; call second function
  call second

  ; epilogue

second:
  ; TODO print "two"
