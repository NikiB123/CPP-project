CXX := g++

SRC := $(wildcard src/*.cpp)
TESTS := $(wildcard test/*.cpp)
INCL_DIR := include/

TARGET_NAME := CPPProject
TARGET_NAME_TESTS:= CPPProject-test

$(TARGET_NAME):
	@mkdir build
	@$(CXX) -I$(INCL_DIR) $(SRC) -o build/CPPProject
     	
$(TARGET_NAME_TESTS):
	@mkdir build/test
	@$(CXX) $(TESTS) -o build/test/CPPProject-test

clean:
	@rm -r -f build && rm -r -f build/test

