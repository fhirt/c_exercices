CC=gcc 
CFLAGS=-std=c99 -pedantic -pedantic-errors -Werror -Wall -Wextra
VPATH= src include ../c_lib fileio
TARGET=copy

all: $(TARGET)

copy: copy.c

%: %.c
	gcc CFLAGS -c $@ $< ../c_lib/error_functions.c ../c_lib/get_num.c

clean:
	$(RM) $(TARGET)

