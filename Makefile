CC 	   = g++
CFLAGS 	   = -Wall -std=c++11 -fPIC
LDFLAGS    = -shared
RESULTDIR  = result

SOURCES    = $(wildcard ./*.cpp)
OBJECTS    = $(patsubst ./%.cpp, $(RESULTDIR)/%.o, $(SOURCES))
TARGET 	   = $(RESULTDIR)/sp_lab4
LIBRARY    = $(RESULTDIR)/sp_lab4_lib.so

all: $(TARGET) $(LIBRARY)
$(TARGET): $(OBJECTS)
	@mkdir -p $(RESULTDIR)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)
$(LIBRARY): $(OBJECTS)
	@mkdir -p $(RESULTDIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(LIBRARY) $(OBJECTS)
$(RESULTDIR)/%.o: ./%.cpp
	@mkdir -p $(RESULTDIR)
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -rf $(RESULTDIR)
