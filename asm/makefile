ASM = nasm
LD = ld
ASMFLAGS = -f elf64
LDFLAGS = -no-pie

SRC = Colleen.asm Grace.asm Sully.asm
OBJ = $(SRC:.asm=.o)
EXEC = $(SRC:.asm=)

all: $(EXEC)

%: %.o
	@$(LD) $(LDFLAGS) -o $@ $<

%.o: %.asm
	@$(ASM) $(ASMFLAGS) $< -o $@

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(EXEC)
	@rm -f tmp_Colleen

re: fclean all
