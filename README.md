# AT91Bootstrap
A Docker image for cross compiling [AT91Bootstrap][at91bootstrap] for ARM.

## Get started
To get started build the Docker image.

``` shell

$ docker build -t "orangetux/at91bootstrap" .

```
## Usage
Start a container from the image that you just build:

``` shell

$ ./run.sh
root@2ab4258fb321:~/at91bootstrap#

```

Build configuration:

``` shell

$ ./run.sh make menuconfig
*** End of at91bootstrap configuration.                                     
*** Execute 'make' to build at91bootstrap or try 'make help'.               
                                                                        
#                                                                           
# make dependencies written to .auto.deps                                   
# ATTENTION at91bootstrap devels!                                           
# See top of this file before playing with this auto-preprequisites!        
#               

```

The configuration is stored on the host in the file `.config`.

And cross-compile the bootloader:

``` shell

$ ./run.sh make
root@2ab4258fb321:~/at91bootstrap# make CROSS_COMPILE=arm-linux-gnueabi-       
[...]                                                                       
[Succeeded] It's OK to fit into SRAM area     

```

Build products are stored in `binaries/` folder on the host.

[at91bootstrap]:https://github.com/linux4sam/at91bootstrap
