section .data ; declaração e inicialização de dados
	msg db	'Hello World!', 0xA
	len equ $-msg

section .text ;programa inicia aqui, a partir da label _start

global _start

_start: mov	edx, len
	mov	ecx, msg
	mov	ebx, 0x1		;syscall default output
	mov	eax, 0x4		;0x4 = syscall write
	int	0x80			;syscall inicio(execução do bloco)

	mov	ebx, 0x0		; seta 0 como valor de retorno
	mov	eax, 0x1		; 1 indica termino do programa(exit)
	int	0x80
