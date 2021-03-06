# dhrystone.mk
#
# The makefile responsible for making dhrystone.

DHRYFILES = dhry.h $(SRC)/muddCLib/muddCLib.h boot_start.dat boot_loader.dat

dhrystone.asm: dhrystone.c $(DHRYFILES)
	$(CC) $(CFLAGS) -O2 -S $< -o $@ 

dhryFuncs.asm: dhryFuncs.c $(DHRYFILES)
	$(CC) $(CFLAGS) -O2 -S $< -o $@ 


dhrystone.o: dhrystone.asm
	python $(SRC)/checkInstructions.py $<
	$(AS) -o $@ $<

dhryFuncs.o: dhryFuncs.asm
	python $(SRC)/checkInstructions.py $<
	$(AS) -o $@ $<

dhrystone.out: dhrystone.o dhryFuncs.o $(SRC)/muddCLib/muddCLib.o
	$(LD) $(LDFLAGS) -Ttext=$(PROG_LOC) -o $@ $^

clean-dhrystone:
	rm -f dhryFuncs.asm dhrystone.asm
