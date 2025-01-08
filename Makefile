# Compiler and flags
CXX = clang++
CXXFLAGS = -std=c++17 -I./include
LDFLAGS = -L/opt/homebrew/lib -lglfw -framework OpenGL -framework CoreFoundation

# Source files
GLAD_SRC = ./src/glad.c

# Directories
BIN_DIR = ./bin
SRC_DIR = ./src

# Targets
all: $(BIN_DIR)/main

$(BIN_DIR)/main: $(SRC_DIR)/main.cpp $(GLAD_SRC)
	mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	rm -rf $(BIN_DIR)/*
