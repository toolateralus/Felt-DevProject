section .data

; THIS IS A COMPILED HEADER FILE / LINKED LIBRARY FOR 'felt' PROGRAMMING LANGUAGE.	push rbp ;VAR_STACK_CT 0
	mov rbp, rsp ;STACK_FRAME_CT 1

; Potential External Functions
; Function Definitions
exit:
	push rbp ;VAR_STACK_CT 1
	mov rbp, rsp ;STACK_FRAME_CT 2
	mov rdi, 200
	mov rax, 60
	syscall

	ret ; END VOID / NON RETURNING FN (! THIS MIGHT BE AN ERROR !) exit ADDR 140 LEN 100

