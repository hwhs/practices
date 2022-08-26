.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 05_01
	$(MAKE) 05_02
	$(MAKE) 05_03
	$(MAKE) 05_04
	$(MAKE) 05_05
	$(MAKE) 05_06
	$(MAKE) 05_07
	$(MAKE) 05_08
	$(MAKE) 05_09
	$(MAKE) EX05_01
	$(MAKE) EX05_02
	$(MAKE) EX05_03
	$(MAKE) EX05_04
	$(MAKE) EX05_06_1
	$(MAKE) EX05_06_2
	$(MAKE) EX05_06_3
	$(MAKE) EX05_06_4
	$(MAKE) EX05_07
	$(MAKE) EX05_08

clean:
	$(Q)rm -rf $(EXE_DIR)

05_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p072-05-01.m -o $(EXE_DIR)/05-01

05_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p073-05-02.m -o $(EXE_DIR)/05-02

05_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p076-05-03.m -o $(EXE_DIR)/05-03

05_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p079-05-04.m -o $(EXE_DIR)/05-04

05_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p081-05-05.m -o $(EXE_DIR)/05-05

05_06:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p085-05-06.m -o $(EXE_DIR)/05-06

05_07:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p086-05-07.m -o $(EXE_DIR)/05-07

05_08:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p088-05-08.m -o $(EXE_DIR)/05-08

05_09:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p090-05-09.m -o $(EXE_DIR)/05-09

EX05_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-01.m -o $(EXE_DIR)/ex05-01

EX05_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-02.m -o $(EXE_DIR)/ex05-02

EX05_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-03.m -o $(EXE_DIR)/ex05-03

EX05_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-04.m -o $(EXE_DIR)/ex05-04

EX05_06_1:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-06-1.m -o $(EXE_DIR)/ex05-06-1

EX05_06_2:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-06-2.m -o $(EXE_DIR)/ex05-06-2

EX05_06_3:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-06-3.m -o $(EXE_DIR)/ex05-06-3

EX05_06_4:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-06-4.m -o $(EXE_DIR)/ex05-06-4

EX05_07:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-07.m -o $(EXE_DIR)/ex05-07

EX05_08:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex05-08.m -o $(EXE_DIR)/ex05-08