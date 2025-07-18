.global print
print:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x3, x0
    mov x1, x0
    bl len_string

    mov x2, x0
    mov x0, #1
    mov x1, x3
    mov x8, #64
    svc #0
    
    ldp x29, x30, [sp], #16
    ret

len_string:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x12, #0

loop_len_string:
    ldrb w11, [x1], #1
    cmp w11, #0
    beq end_len_string
    add x12, x12, #1
    b loop_len_string

end_len_string:
    mov x0, x12
    ldp x29, x30, [sp], #16
    ret

