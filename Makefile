CC      = gcc
CFLAGS  = -g -ggdb3 -O0 -std=c99 -pipe -Wall -Wextra -pedantic -D_FILE_OFFSET_BITS=64
LFLAGS  =

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
	rm -f $(TARGET) $(OBJS) core* *~
