#
# Makefile for bookshelf
#
TARGET = bookshelf

OBJC = gcc
OBJCFLAGS = `gnustep-config --objc-flags` -W -Wall
LIB = -lobjc -lgnustep-base

all: $(TARGET)

$(TARGET): main.o Bookshelf.o
	$(OBJC) $(OBJCFLAGS) $^ $(LIB) -o $@

%.o: %.m
	$(OBJC) $(OBJCFLAGS) -c $< -o $@

#
# clean
#
RM = rm -f

clean:
	$(RM) *~
	$(RM) *.o *.d
distclean: clean
	$(RM) $(TARGET)
