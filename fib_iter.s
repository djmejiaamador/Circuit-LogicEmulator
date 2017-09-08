	.text

	.balign 4

	.func fib_iter_a

	
//meh
	/* setup args */
	mov r0, #5
	/* call sum_array */
	bl fib_iter_a

	/* end in infinite loop */
done:
	b done
	        

fib_iter_a:
	cmp r0, #0 // if n = 0 return 0;
	beq end_it_all
	cmp r0 , #1 // if n = 1 return 1
	beq end_it_all
	mov r2,#0 //sum
	mov r1, #1 // r1 = counter
	mov r3,#0
	mov r4,#1
	
loop:	 
	cmp r1, r0 // for int i < n
	beq end
	add r2, r3,r4
	mov r3, r4
	mov r4, r2
	add r1,r1,#1
	b loop
end:
	mov r0,r2
end_it_all:
	mov pc, lr
