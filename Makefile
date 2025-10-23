TIMESTAMP   ?= $(shell date +%Y%m%d%H%M%S)
WORK_DIR    := work
DIST_DIR    := dist/$(TIMESTAMP)
SRC_DIR     := src

MKARCHISO   := sudo mkarchiso

.PHONY: all build clean

all: clean build

build:
	@echo "==> Building ISO: $(DIST_DIR)"
	@mkdir -p $(DIST_DIR)
	@$(MKARCHISO) -v -r -w $(WORK_DIR) -o $(DIST_DIR) $(SRC_DIR)

clean:
	@echo "==> Cleaning work directory"
	@sudo rm -rf $(WORK_DIR)
