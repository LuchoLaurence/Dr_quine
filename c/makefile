# Variables
CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = Colleen/Colleen.c Grace/Grace.c Sully/Sully.c
EXEC = $(SRC:.c=)

# Règles
all: $(EXEC) 

# Compilation des fichiers C
%: %.c
	@$(CC) $(CFLAGS) $< -o $@

# Nettoyage des fichiers objets
clean:
	@rm -f $(EXEC)

# Nettoyage complet
fclean: clean
	@rm -f tmp_Colleen
	@
	
# Récompilation complète
re: fclean all
