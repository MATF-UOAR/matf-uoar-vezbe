.text

.align 2

.global broj_tipicnih

// int broj_tipicnih(unsigned long *a, int n);
// w0                    x0            w1
broj_tipicnih:
	stp fp, lr, [sp, #-16]!
	mov fp, sp
	sub sp, sp, #32

	// -------------------- <- sp = fp - 32
	//
	//  prostor za median
	// -------------------- <- fp - 24
    //
	//  prostor za mean
	// -------------------- <- fp - 16
	//  poravnanje adresa
	// -------------------- <- fp - 12
	//  prostor za n
	// -------------------- <- fp - 8
	// 
	//  prostor za a 
	// -------------------- <- fp
	str x0, [fp, #-8]
	str w1, [fp, #-12]
	sub x2, fp, #24  // adresa mean
	sub x3, fp, #32  // adresa median
	bl statistika    // popunjava memoriju na steku (prosledjenu kao 2. i 3. arg)

	ldr x0, [fp, #-8]
	ldr w1, [fp, #-12]
	ldr x4, [fp, #-24]  // x4 - mean
	ldr x5, [fp, #-32]  // x5 - median
	cmp x4, x5          // poredimo mean i median
	csel x2, x4, x5, lo // manji ide u x2
	csel x3, x4, x5, hi // veci ide u x3
	
	bl broj_u_opsegu


	mov sp, fp
	ldp fp, lr, [sp], #16
	ret
