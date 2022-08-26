.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 08_01
	$(MAKE) 08_02
	$(MAKE) 08_03
	$(MAKE) 08_04
	$(MAKE) 08_05
	$(MAKE) 08_05b
	$(MAKE) 08_06
	$(MAKE) 08_07
	$(MAKE) EX08_01
	$(MAKE) EX08_02
	$(MAKE) EX08_03

clean:
	$(Q)rm -rf $(EXE_DIR)

08_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p156-08-01.m -o $(EXE_DIR)/08-01

08_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p159-08-02/*.m -o $(EXE_DIR)/08-02

08_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p160-08-03/*.m -o $(EXE_DIR)/08-03

08_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p164-08-04/*.m -o $(EXE_DIR)/08-04

08_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p167-08-05/*.m -o $(EXE_DIR)/08-05

08_05b:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p170-08-05b/*.m -o $(EXE_DIR)/08-05b

08_06:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p171-08-06.m -o $(EXE_DIR)/08-06

08_07:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p173-08-07.m -o $(EXE_DIR)/08-07

EX08_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex08-01.m -o $(EXE_DIR)/ex08-01

EX08_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex08-02/*.m -o $(EXE_DIR)/ex08-02

EX08_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex08-03.m -o $(EXE_DIR)/ex08-03