#
# Code kata makefile
#

TARGET = test-roman-numerals

CC           = gcc
INCLUDE_DIRS = -I./src -I/usr/local/include
CFLAGS       = -g -std=c99 -Wall -Wextra -Wswitch-default -Werror -Wfatal-errors $(INCLUDE_DIRS)
LDFLAGS      = -lcmocka

SRC = ./src/roman-numerals.c ./tests/test-roman-numerals.c
OBJ = $(SRC:%.c=%.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%: %.c
	$(CC) $(CFLAGS) $^

clean:
	rm -f $(TARGET) $(OBJ)
