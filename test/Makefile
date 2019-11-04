include ../config.mk

CC=clang
CFLAGS=-I../src -I../lib -I. -I.. -Wall -ggdb -DDEBUG -DWITH_CLIENT -c -emit-llvm
LDFLAGS=
OBJS=context.bc database.bc logging.bc memory.bc net.bc raw_send.bc raw_send_client.bc read_handle.bc read_handle_client.bc util.bc
SOVERSION=1

.PHONY: all test clean reallyclean

all : fake_user msgsps_pub msgsps_sub 
#packet-gen qos

test :
	$(MAKE) -C broker test
	$(MAKE) -C lib test

ptest :
	$(MAKE) -C broker ptest
	$(MAKE) -C lib ptest

fake_user : fake_user.bc
	${CC} $^ -o $@ ../lib/libmosquitto.so.${SOVERSION}
	#${CC} $^ -o $@ -lmosquitto

fake_user.bc : fake_user.c
	${CC} $(CFLAGS) -c $< -o $@

msgsps_pub : msgsps_pub.bc
	${CC} $^ -o $@ ../lib/libmosquitto.so.${SOVERSION}

msgsps_pub.bc : msgsps_pub.c msgsps_common.h
	${CC} $(CFLAGS) -c $< -o $@

msgsps_sub : msgsps_sub.bc
	${CC} $^ -o $@ ../lib/libmosquitto.so.${SOVERSION}

msgsps_sub.bc : msgsps_sub.c msgsps_common.h
	${CC} $(CFLAGS) -c $< -o $@

packet-gen : packet-gen.bc
	${CC} $^ -o $@ ../lib/libmosquitto.so.${SOVERSION}

packet-gen.bc : packet-gen.c
	${CC} $(CFLAGS) -c $< -o $@

qos : qos.bc
	${CC} $^ -o $@ ../lib/libmosquitto.so.${SOVERSION}

qos.bc : qos.c
	${CC} $(CFLAGS) -c $< -o $@

random_client : random_client.bc ${OBJS}
	${CC} $^ -o $@ ${LDFLAGS}

random_client.bc : random_client.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

context.bc : ../src/context.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

database.bc : ../src/database.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

logging.bc : ../src/logging.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

memory.bc : ../src/memory.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

net.bc : ../src/net.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

raw_send.bc : ../src/raw_send.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

raw_send_client.bc : ../src/raw_send_client.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

read_handle.bc : ../src/read_handle.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

read_handle_client.bc : ../src/read_handle_client.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

util.bc : ../src/util.c ../src/mqtt3.h
	${CC} $(CFLAGS) -c $< -o $@

reallyclean : clean
	-rm -f *.bcrig

clean : 
	-rm -f *.bc random_client qos msgsps_pub msgsps_sub fake_user test_client *.pyc
	$(MAKE) -C lib clean
	$(MAKE) -C broker clean
