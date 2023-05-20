# nasa-CPU

An hobbystic and full of love RISC-V Central Processing Unit.

## Why this Project

I have been working as a researcher in the field of Computer Architecture for several years, developing CPUs and studying them using specific performance simulators (i.e. [gem5](https://www.gem5.org/)). Lately I've come to realize that while I have experience building CPUs at the microarchitectural level, I've never developed a CPU *from scratch* starting from individual digital components.

Driven by the curiosity to build my own CPU from scratch, I bought an amazing book [^1] which sheds light, in a very entertaining way, on the aspects of [High-Level Synthesis](https://en.wikipedia.org/wiki/High-level_synthesis) that I had intended to study and deepen.

This combination of events is perfect since I will be able to build my (hobbystic) CPU in my limited time available starting from a solid foundation such as the one described by Bernand Goossens in the mentioned book.

[^1]: _Guide to Computer Processor Architecture,
A RISC-V Approach, with High-Level Synthesis_ - Bernard Goossens

## Why nasa-CPU

Because the primary purpose of this processor will be to power the spaceships we're going to build in the near future, of course. But also because love leads to silly and funny things.

I'll try to update this git with the progress I'll make in reading the book, time permitting. The code will be, at least initially, very similar (if not the same!) to the one reported by Goossens. However, I hope to add additional features along the way in order to personalize this project.

**_"That's love!"_** 

## Install the RISC-V tools

Working with Ubuntu on WLS2 and bash:

```console
$ sudo apt-get install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build
```

We are going to install the toolchain, the simulator and the kernel proxy in the /opt/riscv with root permissions. 

### RISC-V toolchain:

```console
$ git clone https://github.com/riscv/riscv-gnu-toolchain
$ cd riscv-gnu-toolchain
$ ./configure --prefix=/opt/riscv --enable-multilib --with-arch=rv32i
$ sudo make
```

Add the toolchain path to .profile:

```shellscript
if [ -d "/opt/riscv" ] ; then
    PATH="/opt/riscv/bin:$PATH"
    RISCV="/opt/riscv"
fi
```

### Spike Simulator

Used to simulate the risc-v programs

```console
$ git clone https://github.com/riscv/riscv-isa-sim
$ export RISCV=/opt/riscv
$ cd riscv-isa-sim
$ mkdir build
$ cd build
$ ../configure --prefix=$RISCV --with-isa=rv32i
```

### Kernel proxy for Spike

Used to execute kernel code without having an entire OS running

```console
$ git clone https://github.com/riscv/riscv-pk
$ cd riscv-pk
$ mkdir build
$ cd build
$ ../configure --prefix=$RISCV --host=riscv32-unknown-elf --with-arch=rv32i_zifencei_zicsr
$ make
$ sudo make install
```

