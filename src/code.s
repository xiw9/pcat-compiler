	 .text
	 .globl _MainEntry

_MainEntry:
	 pushl %ebp
	 movl %esp, %ebp
	 subl $12, %esp
	 andl $-16, %esp
	 movl $0, %eax
	 movl %eax, -4(%ebp)
	 movl $2, %eax
	 pushl %eax
	 movl $3, %eax
	 pushl %eax
	 pushl %ebp
	 call _FOO
	 addl $12, %esp
	 movl $label_1, %eax
	 push %eax
	 call _print_str
	 addl $4, %esp
	 movl -4(%ebp), %eax
	 movl %eax, -8(%ebp)
	 movl -8(%ebp), %eax
	 push %eax
	 call _print_int
	 addl $4, %esp
	 movl $label_2, %eax
	 push %eax
	 call _print_str
	 addl $4, %esp
	 call _print_line
	 leave
	 ret

_FOO:
	 pushl %ebp
	 movl %esp, %ebp
	 subl $8, %esp
	 andl $-16, %esp
	 pushl %ebp
	 call _BAR
	 addl $4, %esp
	 movl 16(%ebp), %eax
	 movl %eax, -4(%ebp)
	 movl -4(%ebp), %eax
	 movl 8(%ebp), %edx
	 movl %eax, -4(%edx)
	 leave
	 ret
	 leave
	 ret

_BAR:
	 pushl %ebp
	 movl %esp, %ebp
	 subl $12, %esp
	 andl $-16, %esp
	 movl 8(%ebp), %edx
	 movl 12(%edx), %eax
	 movl %eax, -4(%ebp)
	 movl -4(%ebp), %eax
	 movl $1, %ecx
	 addl %ecx, %eax
	 movl %eax, -8(%ebp)
	 movl -8(%ebp), %eax
	 movl 8(%ebp), %edx
	 movl %eax, 16(%edx)
	 leave
	 ret
