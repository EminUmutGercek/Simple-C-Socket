##
# C Socket Server
#
# @file
# @version 0.1

# TODO Think about autotools

CC = gcc
CFLAGS = -Wall -Wextra -g
LDFLAGS = -pthread


# TODO Clean Makefile

all: server client

server: server.o shared.o netutils.o logger.o
client: client.o shared.o netutils.o


.PHONY: clean
clean:
	rm -rf $(wildcard *.o)
	rm -rf server client
# end
