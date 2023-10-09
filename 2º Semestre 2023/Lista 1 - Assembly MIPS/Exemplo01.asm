.data
    msg01: .asciiz"Hello Word"
.text
main:
    li $v0, 4
    la $a0, msg01
    syscall