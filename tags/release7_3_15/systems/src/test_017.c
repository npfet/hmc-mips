/*  Harvey Mudd College VLSI MIPS Project
 * Nathaniel Pinckney
 * Spring, 2007
 *
 * Test 017
 *
 * Created: 2/10/07
 *
 *   Cache invalidation, uncache write, cached read test.
 */

#include <limits.h>

int test2(void);

// This is the boot loader code...
  // swap
  asm("swapon: addi  $9, $0, 1");
  asm("sll $9,$9,17");
  asm("mtc0  $9, $12");
  asm("nop");
  asm("nop");
  asm("nop");
  
  // Invalidate entire instruction cache
  asm("addi $10, $0, 256");
  asm("addi $11, $0, 0x400");
  asm("loop1:");
  asm("sb $0,0($11)");
  asm("addi $11,$11,4");
  asm("addi $10,$10,-1");
  asm("bnez $10,loop1");

  // unswap
  asm("swapoff: addi  $9, $0, 0");
  asm("mtc0  $9, $12");
  asm("nop");
  asm("nop");
  asm("nop");

  // Invalidate entire data cache
  asm("addi $10, $0, 256");
  asm("addi $11, $0, 0x400");
  asm("loop2:");
  asm("sb $0,0($11)");
  asm("addi $11,$11,4");
  asm("addi $10,$10,-1");
  asm("bnez $10,loop2");

//  In order to run the first function, first initialize stack pointer
asm("li $sp,0x300");

// And jumped to the cached address for main()
// Note: the jumped address must be changed manually, labels
// didn't seem to work.
asm("addi $8, $0, 116");
asm("jr $8");

// bootstrap test, to invalidate both caches.
void test()
{
   long *successptr;
   int i;
   long *ptr;
   int temp;

   ptr = (long *) 0x300;
   for(i = 0; i < 0xf; i++) {
	   *ptr = i;
	   ptr += 1;
   }  

   ptr = (long *) 0x300;
   for(i = 0; i < 0xf; i++) {
	   temp = *ptr;
	   ptr += 1;
   }
   
   successptr = (long *) 0x0;
   *successptr = test2() + i;
   while(1);
}

int test2(void) {
	int a = 0xdead0000;
	int b = 0x0000bee0;
	int c = a+b;
	return c;
}
