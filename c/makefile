# Variables
CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = Colleen/Colleen.c Grace/Grace.c Sully/Sully.c
EXEC = $(SRC:.c=)

# Règles
all: $(EXEC)
	mv Sully/Sully Sully/Sully_X/

# Compilation des fichiers C
%: %.c
	@$(CC) $(CFLAGS) $< -o $@

# Nettoyage des fichiers objets
clean:
	@rm -f $(EXEC)
	@rm -f Sully/Sully_X/Sully*

# Nettoyage complet
fclean: clean
	@rm -f Colleen/tmp_Colleen
	@rm -f Grace_kid.c
	@rm -f Grace/Grace_kid.c
	@rm -f Sully/Sully_X/Sully_*
	
# Récompilation complète
re: fclean all
	

.PHONY: all clean fclean re
