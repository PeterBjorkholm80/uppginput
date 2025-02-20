program: main.c 
	gcc main.c -o main.out

clean:
	rm main

test: program
	bash test.sh
