TARGET = my_project
COMPILER = g++

PREF_SRC = ./src/
PREF_BIN = ./bin/

SRC = $(wildcard $(PREF_SRC)*.cpp)
BIN = $(patsubst $(PREF_SRC)%.cpp, $(PREF_BIN)%.o, $(SRC))

$(TARGET) : $(BIN)
	$(COMPILER) $(BIN) -o $(TARGET)

$(PREF_BIN)%.o : $(PREF_SRC)%.cpp
	$(COMPILER) -c $< -o $@

clean : 
	rm -r $(TARGET) $(PREF_BIN)

$(BIN) : | $(PREF_BIN)

$(PREF_BIN) :
	mkdir $(PREF_BIN)
