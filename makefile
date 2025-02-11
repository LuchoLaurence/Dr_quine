C_DIR = c
ASM_DIR = asm

all:
	@$(MAKE) -C $(C_DIR)
	@$(MAKE) -C $(ASM_DIR)

clean:
	$(MAKE) -C $(C_DIR) clean
	$(MAKE) -C $(ASM_DIR) clean

fclean:
	$(MAKE) -C $(C_DIR) fclean
	$(MAKE) -C $(ASM_DIR) fclean

re:
	$(MAKE) fclean
	$(MAKE) all

.PHONY: all clean fclean re