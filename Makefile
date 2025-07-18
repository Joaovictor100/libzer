CC = gcc
CFLAGS = -Wall -O2
ASMFLAGS = -Wall

LIBC = _main
LIB = lib_main
CFILE ?= main

ASM_DIR = src/asm-arm
C_DIR = src/c
BUILD_DIR = build
LIB_DIR = lib
EXE_DIR = bin

SRC_ASM = $(wildcard $(ASM_DIR)/*.s)
OBJ = $(patsubst $(ASM_DIR)/%.s, $(BUILD_DIR)/%.o, $(SRC_ASM))

all: $(EXE_DIR)/$(CFILE)

$(BUILD_DIR)/%.o: $(ASM_DIR)/%.s
	@mkdir -p $(BUILD_DIR)
	$(CC) $(ASMFLAGS) -c $< -o $@

$(LIB_DIR)/$(LIB).a: $(OBJ)
	@mkdir -p $(LIB_DIR)
	ar rcs $@ $^

$(BUILD_DIR)/$(CFILE).o: $(C_DIR)/$(CFILE).c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(EXE_DIR)/$(CFILE): $(BUILD_DIR)/$(CFILE).o $(LIB_DIR)/$(LIB).a
	@mkdir -p $(EXE_DIR)
	$(CC) $(CFLAGS) -o $@ $^ -L$(LIB_DIR) -l$(LIBC)

.PHONY: clean

clean:
	rm -f $(BUILD_DIR)/*.o
	rm -f $(LIB_DIR)/*.a
	rm -f $(EXE_DIR)/$(CFILE)

run:
	@./bin/main
