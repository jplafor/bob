ifndef PROJECT
$(error PROJECT is not defined. Halting the build.)
endif

.PHONY: all $(SUBDIRS) clean .create_dirs

# Variables for directory paths
BIN_DIR = $(PROJECT)/build/bins
LIB_DIR = $(PROJECT)/build/libs
OBJS_DIR = $(PROJECT)/build/.objs

# Rule to create the necessary directories
.create_dirs:
	@mkdir -p $(BIN_DIR)
	@mkdir -p $(LIB_DIR)
	@mkdir -p $(OBJS_DIR)