CC = g++ #The compiler which we are using
CFLAGS = --std=c++17 -Wall -Werror -pedantic -g
LIB = -lsfml-system -lsfml-graphics -lsfml-window -lboost_unit_test_framework -lboost_date_time -lboost_regex
INCLUDEDIR = -I/opt/homebrew/Cellar/boost/1.85.0/include -I/opt/homebrew/Cellar/sfml/2.6.1/include
LIBDIR = -L/opt/homebrew/Cellar/boost/1.85.0/lib -L/opt/homebrew/Cellar/sfml/2.6.1/lib

# Source and object files
SRC = main.cpp
OBJ = main.o
TARGET = ps7

# Default target
all: $(TARGET)

# Build the executable
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(LIB)

# Compile source files into object files
%.o: %.cpp
	$(CC) $(CFLAGS) -c $< $(INCLUDEDIR)

# Clean up object files and executables
clean:
	rm -f *.o $(TARGET)