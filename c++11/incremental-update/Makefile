#
# Code kata makefile
#

TARGET = test-incremental-update

CC           = g++
INCLUDE_DIRS = -I./src -I/usr/local/include
CXXFLAGS     = -g -std=c++14 -pedantic -Wall -Wextra -Wswitch-default -Werror -Wfatal-errors $(INCLUDE_DIRS)
LDFLAGS      = -lgmock_main -lgtest -lgmock -pthread

SRC = ./src/Catalog.cpp ./src/Region.cpp ./src/IncrementalUpdate.cpp ./tests/CatalogTest.cpp ./tests/RegionTest.cpp ./tests/IncrementalUpdateTest.cpp
OBJ = $(SRC:%.cpp=%.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%: %.cpp
	$(CC) $(CXXFLAGS) $^

clean:
	rm -f $(TARGET) $(OBJ)
