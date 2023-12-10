# Specify the target kernel module
obj-m += lll-gpio-driver.o

# Set the kernel headers directory
KDIR = /lib/modules/$(shell uname -r)/build

# Target to build kernel modules
all:
	# Invoke make in the kernel source directory with the current module source
	make -C $(KDIR) M=$(shell pwd) modules

# Target to clean up built modules
clean:
	# Invoke make in the kernel source directory to clean the built modules
	make -C $(KDIR) M=$(shell pwd) clean
