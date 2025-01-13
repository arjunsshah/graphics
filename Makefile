# Compiler and flags
CXX = clang++
CXXFLAGS = -std=c++17 -I./include
LDFLAGS = -L/opt/homebrew/lib -lglfw -framework OpenGL -framework CoreFoundation

# Source files
GLAD_SRC = ./src/glad.c

# Directories
# BIN_DIR = ./bin
# SRC_DIR = ./src

BIN_DIR = ./01_3D_Graphics_Basics/code/bin
SRC_DIR = ./01_3D_Graphics_Basics/code/src

FILE_NAME = camera_class.cpp
TARGET_NAME = $(basename $(FILE_NAME))


# Targets
all: $(BIN_DIR)/$(TARGET_NAME)

$(BIN_DIR)/$(TARGET_NAME): $(SRC_DIR)/$(FILE_NAME) $(GLAD_SRC)
	mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	rm -rf $(BIN_DIR)/*
