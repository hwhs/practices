.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 02_01_2
	$(MAKE) 02_02
	$(MAKE) 02_03
	$(MAKE) 02_04
	$(MAKE) 02_05
	$(MAKE) EX02_02
	$(MAKE) EX02_03
	$(MAKE) EX02_04
	$(MAKE) EX02_05
	$(MAKE) EX02_06

clean:
	$(Q)rm -rf $(EXE_DIR)

02_01_1:
	$(Q)clang -framework Foundation $(SRC_DIR)/p007-02-01.m -o $(EXE_DIR)/02-01

02_01_2:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p007-02-01.m -o $(EXE_DIR)/02-01

02_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p021-02-02.m -o $(EXE_DIR)/02-02

02_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p022-02-03.m -o $(EXE_DIR)/02-03

02_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p023-02-04.m -o $(EXE_DIR)/p023-02-04

02_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p024-02-05.m -o $(EXE_DIR)/p024-02-05

EX02_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex02-02.m -o $(EXE_DIR)/ex02-02

EX02_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex02-03.m -o $(EXE_DIR)/ex02-03

EX02_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex02-04.m -o $(EXE_DIR)/ex02-04

EX02_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex02-05.m -o $(EXE_DIR)/ex02-05

EX02_06:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex02-06.m -o $(EXE_DIR)/ex02-06
