.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 09_01
	$(MAKE) 09_02
	$(MAKE) 09_03
	$(MAKE) 09_05

clean:
	$(Q)rm -rf $(EXE_DIR)

09_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p179-09-01/*.m -o $(EXE_DIR)/09-01

09_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p182-09-02/*.m -o $(EXE_DIR)/09-02

09_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p190-09-03/*.m -o $(EXE_DIR)/09-03

09_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p192-09-04/*.m -o $(EXE_DIR)/09-04

09_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p193-09-05/*.m -o $(EXE_DIR)/09-05