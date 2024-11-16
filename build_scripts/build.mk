# Variables for the build
CXX = g++
CXXFLAGS = -Wall -Werror -g
CC = gcc
OBJS_NAMES = $(SRCS:.cpp=.o)
PREFIXED_OBJS = $(foreach i, $(OBJS_NAMES), $(OBJS_DIR)/$(TARGET)/$(i))

# Build rule to build applcation or shared object
ifeq ($(suffix $(TARGET)), .so)
# $(TARGET) = $(BUILD_DIR)/BINS/$(TARGET)
$(TARGET): $(OBJS_NAMES)
	$(CXX) $(CXXFLAGS) -shared -o $(LIB_DIR)/$(TARGET) $(PREFIXED_OBJS)
else
# $(TARGET) = $(BUILD_DIR)/LIBS/$(TARGET)
$(TARGET): $(OBJS_NAMES)
	$(CXX) $(CXXFLAGS) -o $(BIN_DIR)/$(TARGET) $(PREFIXED_OBJS)
endif



# object file build rules
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -fPIC -c $< -o $(OBJS_DIR)/$(TARGET)/$@