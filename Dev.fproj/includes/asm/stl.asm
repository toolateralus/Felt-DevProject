section .text
exit:
	push rbp 
	mov rbp, rsp 
	mov rdi, 200
	mov rax, 60
	syscall
	ret