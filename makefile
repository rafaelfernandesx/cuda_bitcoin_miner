OBJECTS= gpu_miner
CC=nvcc

all: $(OBJECTS)

gpu_miner: main.cu utils.cu sha256.c
	$(CC) -O1 -lrt -lm -arch=sm_20 -o $@ $^