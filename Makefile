C      = gcc
CFLAGS  = -g -MD -Wall -I. -I../../include -D_FILE_OFFSET_BITS=64
LFLAGS  = -lc 

OBJS = tsetr290.o
TARGET = tsetr290
DESTDIR ?= /usr/local/bin/

all: $(TARGET)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LFLAGS)

install: all
	install -m 755 $(TARGET) $(DESTDIR) 

clean:
	rm -f $(TARGET) $(OBJS) core* *~ *.d

-include $(wildcard *.d) dummy

