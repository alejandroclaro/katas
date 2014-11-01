#
# Code kata makefile
#

TARGET = test-roman-numerals

CC           = g++
INCLUDE_DIRS = -I./src -I/usr/local/include
CXXFLAGS     = -g -std=c++03 -Wall -Wextra -Wswitch-default -Werror -Wfatal-errors $(INCLUDE_DIRS)
LDFLAGS      = -lgtest -lgmock -lgmock_main -pthread

SRC = ./src/RomanNumerals.cpp ./tests/RomanNumeralsTest.cpp
OBJ = $(SRC:%.cpp=%.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%: %.cpp
	$(CC) $(CXXFLAGS) $^

clean:
	rm -f $(TARGET) $(OBJ)
