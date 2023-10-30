section .data
TEST: db "This is a testing string. it has contents.",10

section .text
global _start

_start:
	push rbp ;VAR_STACK_CT 0
	mov rbp, rsp ;STACK_FRAME_CT 1
	call func
	push rax ;VAR_STACK_CT 2
	pop rdi ;VAR_STACK_CT 3
	mov rax, 60 ;
	syscall

; Potential External Functions
extern func
extern func
; Function Definitions
func:
	push rbp ;VAR_STACK_CT 1
	mov rbp, rsp ;STACK_FRAME_CT 2
	call func
	push rax ;VAR_STACK_CT 2
	mov rsp, rbp ;STACK_FRAME_CT 1
	pop rbp ;VAR_STACK_CT 3
	ret ;

