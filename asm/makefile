ASM = as
LD = ld

SRC = Colleen.s Grace.s Sully.s
OBJ = $(SRC:.s=.o)
EXEC = $(SRC:.s=)

all: $(EXEC)

%: %.o
	@$(LD)  -o $@ $<

%.o: %.asm
	@$(ASM)  $< -o $@

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(EXEC)
	@rm -f tmp_Colleen

re: fclean all

.PHONY: all clean fclean re