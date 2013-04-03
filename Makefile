#
# Makefile for bookshelf
#
TARGET = bookshelf

OBJC = gcc
OBJCFLAGS = -I/usr/include/GNUstep -fconstant-string-class=NSConstantString -W -Wall
LIB = -lobjc -lgnustep-base

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
