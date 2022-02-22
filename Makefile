NAME	= run

SRC		=	main.c glad.c

CXX		= c++

CPPFLAGS	= -Wall -Wextra -Werror

LIB = -lglfw

OBJ		= $(SRC:.c=.o)

$(NAME): $(OBJ)
	$(CXX) $(CPPFLAGS) $(LIB) $(OBJ) -o $(NAME) 

all: $(NAME)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean
