obj-m += src/scuzzball.o


all:
		make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules CPPFLAGS=${CPPFLAGS}

clean:
		make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
