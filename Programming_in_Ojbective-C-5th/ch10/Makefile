.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 10_01
	$(MAKE) 10_01a
	$(MAKE) 10_02
	$(MAKE) 10_03

clean:
	$(Q)rm -rf $(EXE_DIR)

10_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p199-10-01/*.m -o $(EXE_DIR)/10-01

10_01a:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p204-10/*.m -o $(EXE_DIR)/10-01a

10_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p207-10-02/*.m -o $(EXE_DIR)/10-02

10_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p209-10-03.m -o $(EXE_DIR)/10-03