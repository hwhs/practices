.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 06_01
	$(MAKE) 06_02
	$(MAKE) 06_03
	$(MAKE) 06_04
	$(MAKE) 06_05
	$(MAKE) 06_06
	$(MAKE) 06_07
	$(MAKE) 06_08
	$(MAKE) 06_08a
	$(MAKE) 06_09
	$(MAKE) 06_10
	$(MAKE) 06_11
	$(MAKE) EX06_01
	$(MAKE) EX06_02
	$(MAKE) EX06_03
	$(MAKE) EX06_05
	$(MAKE) EX06_06
	$(MAKE) EX06_07

clean:
	$(Q)rm -rf $(EXE_DIR)

06_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p094-06-01.m -o $(EXE_DIR)/06-01

06_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p096-06-02.m -o $(EXE_DIR)/06-02

06_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p098-06-03.m -o $(EXE_DIR)/06-03

06_04:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p100-06-04.m -o $(EXE_DIR)/06-04

06_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p102-06-05.m -o $(EXE_DIR)/06-05

06_06:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p106-06-06.m -o $(EXE_DIR)/06-06

06_07:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p108-06-07.m -o $(EXE_DIR)/06-07

06_08:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p110-06-08.m -o $(EXE_DIR)/06-08

06_08a:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p113-06-08a.m -o $(EXE_DIR)/06-08a

06_09:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p117-06-09.m -o $(EXE_DIR)/06-09

06_10:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p119-06-10.m -o $(EXE_DIR)/06-10

06_11:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p122-06-11.m -o $(EXE_DIR)/06-11

EX06_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex06-01.m -o $(EXE_DIR)/ex06-01

EX06_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex06-02.m -o $(EXE_DIR)/ex06-02

EX06_03:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex06-03.m -o $(EXE_DIR)/ex06-03

EX06_05:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex06-05.m -o $(EXE_DIR)/ex06-05

EX06_06:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex06-06.m -o $(EXE_DIR)/ex06-06

EX06_07:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex06-07.m -o $(EXE_DIR)/ex06-07