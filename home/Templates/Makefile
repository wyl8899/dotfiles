# Configs

SRC_DIR += ./src
HEADER_DIRS += ./src
EXEC := main
PKG_CONFIG_LIBRARIES +=

# Generate flags

HEADERS += $(wildcard $(HEADER_DIRS)/*.h)
SRC_OBJECTS += $(patsubst %.cpp, %.o, $(wildcard $(SRC_DIR)/*.cpp))

COMMON_FLAGS += $(foreach includedir,$(INCLUDE_DIRS),-I$(includedir))
CXXFLAGS += $(COMMON_FLAGS) $(WARNINGS)
LINKFLAGS += $(COMMON_FLAGS) $(WARNINGS)

CXXFLAGS += $(foreach library, $(PKG_CONFIG_LIBRARIES), \
		$(shell pkg-config --cflags $(library)))
LDFLAGS += $(foreach library, $(PKG_CONFIG_LIBRARIES), \
		$(shell pkg-config --libs $(library)))

LDFLAGS += $(foreach librarydir,$(LIBRARY_DIRS),-L$(librarydir)) \
		$(foreach library,$(LIBRARIES),-l$(library))

# Targets

.PHONY: all run clean

all: $(EXEC)

run: $(EXEC)
	./$(EXEC)

$(EXEC): $(SRC_OBJECTS)
	$(CXX) $(SRC_OBJECTS) -o $@ $(LINKFLAGS) $(LDFLAGS)

%.o : %.cpp $(HEADERS)
	$(CXX) $< $(CXXFLAGS) -c -o $@

clean:
	rm $(SRC_OBJECTS)
	rm $(EXEC)

print-%  : ; @echo $* = $($*)
