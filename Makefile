all: FloodFill

# FloodFill
FloodFill: PFloodFill.cu
	nvcc PFloodFill.cu -o PFloodFill

clean:
	rm PFloodFill
