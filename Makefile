CXX = g++

BUILD_DIR = ./build/
INC_DIR = ./include/
INC_LIB = ./lib/
SRC_DIR = ./src/
LIB_DIR = ./lib/xArm-CPLUS-SDK/build/lib/
TARGET = /usr/local/bin/
SOURCE = $(SRC_DIR)$(COMMANDER_NAME).cpp

COMMANDER_NAME = xarm-commander

all: commander

commander:
	mkdir -p $(BUILD_DIR)
	$(CXX) $(SOURCE) -I$(INC_DIR) -I$(INC_LIB) -L$(LIB_DIR) -lxarm -o $(BUILD_DIR)$(COMMANDER_NAME)

install:
	cp $(BUILD_DIR)$(COMMANDER_NAME) $(TARGET)

uninstall:
	rm $(TARGET)$(COMMANDER_NAME)

clean:
	rm -rf ./build
