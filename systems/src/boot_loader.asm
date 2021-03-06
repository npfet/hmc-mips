# boot_loader.asm
# Created 2/27/07 by Matt McKnett
# Harvey Mudd College, CMOS VLSI Design Spring '07, MIPS project
#
# This is the segment of the boot loader that will do the actual heavy lifting.
# It must be implemented as exception code so that interrupts will be disabled
# while it is running.
#
# This boot loader is in no way general purpose!!  It is specific to the
# idiosynchrosies of the Harvey Mudd MIPS implementation from Spring 2007.
# It has been written to conform to the special situations and unimplemented
# features of that chip and that chip only.


# Don't le the assembler reorder or fill branch delay slots.
	.set noreorder


# Step 1: Set the Status Register to something that makes sense
# Bits to set:
#   29 (CU1) *not implemented* 
#   22 (BEV) = 0 for now, even though we haven't initialized the cache yet
#		(according to See MIPS run p. 76, this is desirable)
#   20 (PE) *not implemented*
#   18 (PZ) *not implemented*
#   17 (SwC) = 1 start with the I-cache
#   16 (IsC) *Cache isolation has not been implemented, but the bit is settable
#	     in the status register.*
#   8-15 (IM) = 1 for each, enabling all interrupts.
#   5 (KUo) = 1 so that we don't rfe into a bad user mode
#   4 (IEo) = 0 for similar reasons
#   3 (KUp) = 1
#   2 (IEp) = 0
#   1 (KUc) = 1 because we must always run our CPU in kernel mode.
##   0 (IEc) *can only be set on interrupt*
#
#  SR words:  OR with 0x0002FF2A, AND with 0xFF4FFFEB


# Instructions for setting SR (register $12 in cp0) on See MIPS Run p. 105

	.text

	nop

	.globl	reset
	.ent	reset

reset:
	mfc0	$8, $12
set_sr1:
	nop
	nop
	lui	$9, 0x0002		# set the specified bits
	or	$8, $8, $9
	ori	$8, $8, 0xFF2A		 
	lui	$9, 0xFF4F		# clear the specified bits
	ori     $9, $9, 0xFFEB
	and	$8, $8, $9
set_sr2:
	mtc0	$8, $12
	nop
	nop	


# Step 2: Invalidate the cache
# With the I-cache in isolation, we can find out the size of the cache, and
# then write that many invalid bits.

	# Now that we know the cache ignores the isolate bit, we must
	# write bytes to 0x8000 8000 so that we do not clobber what is in
	# the ROM region and so that we don't write into the device I/O.
	# This means we only support up to 32K cache sizes.  (Our cache is
	# 512 MB).  


# Originally, my intention was to generalize the bootloader for any
# cache size, but it is far easier to assume the 512 B cache that
# is on our HMC-MIPS chip.

	addi	$9, $0, 128 	# The cache size is 128 words. 
	li	$10, 0x400	# Load $10 with an address above the inst's 
inval_i_loop:
	sb	$0, 0($10)	# Invalidate the word at address $10
	addi	$10, $10, 4	# Move to next word address
	addi	$9, $9, -1	# Use cache size to count down loop iterations
	bnez	$9, inval_i_loop
				# Keep writing bytes until we run out of space.
	nop

# Now that we have invalidated the I-cache, we move on to the D-cache
swap_i_for_d:
	mfc0	$8, $12
	nop
	nop
	lui	$9, 0xFFFD
	ori	$9, $9, 0xFFFF
	and	$8, $8, $9		# clear the SwC bit
	mtc0	$8, $12
	nop
	nop

# Having swapped the caches, we can repeat the same operation on the D-cache
# that we did on the I-cache.

	addi	$9, $0, 128	# The cache size is again 128 words
	li	$10, 0x400	# Load $10 with the address 0x400
inval_d_loop:
	sb	$0, 0($10)	# Invalidate the word at address $10
	addi	$10, $10, 4	# Move to next word address
	addi	$9, $9, -1	# Use cache size to count down loop iterations
	bnez	$9, inval_d_loop
				# Keep writing bytes until we run out of space.
	nop

# Step 3: Initialize $sp ($29) and $gp ($28) and reset $12 to proper values. 
	lui	$29, 0x8004
	ori	$29, $29, 0x3FFC  # We want the stack pointer at 0x80043FFC

	lui	$28, 0x8001
	ori	$28, $28, 0xEA80  # We want the global pointer at 0x8001EA80

# Set register bits:
#   22 (BEV) = 0 now that we have initialized the cache.
#   16 (IsC) = 0 to disable isolation
##  0  (IEc) = 1 now that we are done with the cache we can re-enable interrupts
	
	mfc0	$8, $12
	nop
	nop
	ori	$8, $8, 0x1	# set IEc
	lui	$9, 0xFFBE	
	ori	$9, $9, 0xFFFF
	and	$8, $8, $9   # clear BEV and IsC.
	mtc0	$8, $12
	nop
	nop


# Step 4:  Return from the exception handler, where this code should reside.
	mfc0	$8, $14	# Get EPC (cp0 reg. 14)
	nop
	nop
	addi	$8, $8, 4	# We don't want to execute the break instruction
	jr	$8		# Jump back to the instruction that called this code.
	rfe			# Don't forget to return from the exception in the BD slot.
	 
	
