.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 04_01
	$(MAKE) 04_02
	$(MAKE) 04_03
	$(MAKE) 04_04
	$(MAKE) 04_05
	$(MAKE) 04_06
	$(MAKE) EX04_02
	$(MAKE) EX04_03
	$(MAKE) EX04_04
	$(MAKE) EX04_05
	$(MAKE) EX04_06
	$(MAKE) EX04_07
	$(MAKE) EX04_08
	$(MAKE) EX04_09
	$(MAKE) EX04_10

clean:
	$(Q)rm -rf $(EXE_DIR)

04_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p052-04-01.m -o $(EXE_DIR)/04-01

04_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p056-04-02.m -o $(EXE_DIR)/04-02

04_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p058-04-03.m -o $(EXE_DIR)/04-03

04_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p060-04-04.m -o $(EXE_DIR)/04-04

04_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p061-04-05.m -o $(EXE_DIR)/04-05

04_06:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p065-04-06.m -o $(EXE_DIR)/04-06

EX04_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex04-02.m -o $(EXE_DIR)/ex04-02

EX04_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex04-03.m -o $(EXE_DIR)/ex04-03

EX04_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex04-04.m -o $(EXE_DIR)/ex04-04

EX04_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex04-05.m -o $(EXE_DIR)/ex04-05

EX04_06:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex04-06.m -o $(EXE_DIR)/ex04-06

EX04_07:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex04-07.m -o $(EXE_DIR)/ex04-07

EX04_08:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex04-08.m -o $(EXE_DIR)/ex04-08

EX04_09:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex04-09.m -o $(EXE_DIR)/ex04-09

EX04_10:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex04-10.m -o $(EXE_DIR)/ex04-10