#
# Makefile for bookshelf
#
TARGET = bookshelf

OBJC = gcc
OBJCFLAGS = -W -Wall
LIB = -lobjc

all: $(TARGET)

$(TARGET): main.o
	$(OBJC) $(OBJCFLAGS) $^ $(LIB) -o $@

%.o: %.m
	$(OBJC) $(OBJCFLAGS) -c $< -o $@

#
# clean
#
RM = rm -f

clean:
	$(RM) *~
	$(RM) *.o
distclean: clean
	$(RM) $(TARGET)
