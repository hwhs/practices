.PHONY: all clean

Q=@

SRC_DIR=./src
EXE_DIR=./exe

all:
	$(MAKE) clean
	$(Q)mkdir -p $(EXE_DIR)
	$(MAKE) 11_01
	$(MAKE) 11_01a
	$(MAKE) 11_01b
	$(MAKE) ex11_01
	$(MAKE) ex11_02

clean:
	$(Q)rm -rf $(EXE_DIR)

11_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p225-11-01/*.m -o $(EXE_DIR)/11-01

11_01a:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p227-11/*.m -o $(EXE_DIR)/11-01a

11_01b:
	$(Q)clang -fobjc-arc $(SRC_DIR)/p228-11/*.m -o $(EXE_DIR)/11-01b

ex11_01:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex11-01/*.m -o $(EXE_DIR)/ex11-01

ex11_02:
	$(Q)clang -fobjc-arc $(SRC_DIR)/ex11-02/*.m -o $(EXE_DIR)/ex11-02