CC = gcc 
CFLAGS = -Wall 
INC_DIR = include
OBJ_DIR = obj
SRC_DIR = src
BIN_DIR = bin
TRANS_DIR = translators
TEST_DIR = test
 
all: $(BIN_DIR)/console 
 
$(BIN_DIR)/console: $(OBJ_DIR)/main.o $(INC_DIR)/libmy.a
	$(CC) -o $@ $< -L$(INC_DIR) -lmy -lm

$(INC_DIR)/libmy.a: $(OBJ_DIR)/mySignal.o $(OBJ_DIR)/myInterface.o $(OBJ_DIR)/myTerm.o $(OBJ_DIR)/mySimpleComputer.o $(OBJ_DIR)/myBigChars.o $(OBJ_DIR)/myReadKey.o
	ar cr $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c 
	$(CC) $(CFLAGS) -c $< -o $@



.PHONY: clean 
clean:
	rm -f $(OBJ_DIR)/*.o $(INC_DIR)/*.a bin/console bin/sat bin/sbt bin/test_bigchars bin/test_comp bin/test_readkey bin/test_term bin/tmp.sa