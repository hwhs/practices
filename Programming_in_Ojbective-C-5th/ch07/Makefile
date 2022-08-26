.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 07_01
	$(MAKE) 07_01a
	$(MAKE) 07_02
	$(MAKE) 07_02a
	$(MAKE) 07_03
	$(MAKE) 07_04
	$(MAKE) 07_05
	$(MAKE) EX07_05
	$(MAKE) EX07_06

clean:
	$(Q)rm -rf $(EXE_DIR)

07_01:
#   clang -fobjc-arc Fraction.m main.m -o exe/07-01
	$(Q)clang -fobjc-arc $(SRC_DIR)/p127-07-01/*.m -o $(EXE_DIR)/07-01

07_01a:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p133-07-01a/*.m -o $(EXE_DIR)/07-01a

07_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p135-07-02/*.m -o $(EXE_DIR)/07-02

07_02a:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p137-07-02a/*.m -o $(EXE_DIR)/07-02a

07_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p141-07-03/*.m -o $(EXE_DIR)/07-03

07_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p146-07-04/*.m -o $(EXE_DIR)/07-04

07_04a:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p148-07-04a/*.m -o $(EXE_DIR)/07-04a

07_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p150-07-05/*.m -o $(EXE_DIR)/07-05

EX07_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex07-05.m -o $(EXE_DIR)/ex07-05

EX07_06:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex07-06/*.m -o $(EXE_DIR)/ex07-06