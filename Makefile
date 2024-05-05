
all: exe

exe: hello.h main.cpp lib
	g++ main.cpp -fPIC -L. -lHello -o hello

lib: hello.h hello.cpp
	g++ -shared hello.cpp -fPIC -o libHello.so

clean:
	-rm hello libHello.so 2>/dev/null


