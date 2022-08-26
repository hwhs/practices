.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 03_01
	$(MAKE) 03_02
	$(MAKE) 03_03
	$(MAKE) 03_04
	$(MAKE) EX03_07

clean:
	$(Q)rm -rf $(EXE_DIR)

03_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p030-03-01.m -o $(EXE_DIR)/03-01

03_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p031-03-02.m -o $(EXE_DIR)/03-02

03_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p044-03-03.m -o $(EXE_DIR)/03-03

03_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p046-03-04.m -o $(EXE_DIR)/03-04

EX03_07:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex03-07.m -o $(EXE_DIR)/ex03-07