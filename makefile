CC=gcc
CFLAGS=-g
PFLAGS=-lm
TARGET=jul23
DEPS=christmas_lib.o

$(TARGET): $(TARGET).o $(DEPS)	
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).o $(DEPS) $(PFLAGS)

$(TARGET).o : $(TARGET).c
	$(CC) $(CFLAGS) -c -I. $(TARGET).c -lm


christmas_lib.o  : christmas_lib.c
	$(CC) -o christmas_lib.o  -c  christmas_lib.c -lm

clean:
	$(RM) $(TARGET) $(TARGET).o $(DEPS)