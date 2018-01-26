UNAME := $(shell uname)

LIBS := -lz -lssl -luv -luWS

ifeq ($(UNAME), Darwin)
	LIBS += -I/usr/local/include -I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib
endif

default:
	g++ -std=c++14 server.cpp -o server $(LIBS)

run:
	./server

up: default run
