LLVM_DIR = /path/to/llvm/bin
LLVM_COMPILER = $(LLVM_DIR)/llvm-as
LLVM_LINKER = $(LLVM_DIR)/llvm-link
LLVM_OPT = $(LLVM_DIR)/opt
LLVM_EXEC = $(LLVM_DIR)/lli

SRCS = $(wildcard src/*.ll)
OBJ = $(SRCS:.ll=.bc)

all: program

program: $(OBJ)
	$(LLVM_LINKER) -o program.bc $(OBJ)
	$(LLVM_EXEC) program.bc

%.bc: %.ll
	$(LLVM_COMPILER) $< -o $@

clean:
	rm -f src/*.bc program.bc
