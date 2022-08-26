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
	$(MAKE) 10_04
	$(MAKE) EX10_01
	$(MAKE) EX10_02
	$(MAKE) EX10_03
	$(MAKE) EX10_04
	$(MAKE) EX10_05
	$(MAKE) EX10_06

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

10_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p218-10-04.m -o $(EXE_DIR)/10-04

EX10_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex10-01/*.m -o $(EXE_DIR)/ex10-01

EX10_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex10-02/*.m -o $(EXE_DIR)/ex10-02

EX10_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex10-03/*.m -o $(EXE_DIR)/ex10-03

EX10_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex10-04.m -o $(EXE_DIR)/ex10-04

EX10_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex10-05/*.m -o $(EXE_DIR)/ex10-05

EX10_06:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex10-06.m -o $(EXE_DIR)/ex10-06