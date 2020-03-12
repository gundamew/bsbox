# bsbox

Yet another Vagrant LEMP stack.

## Requirement

I run the machine with **Vagrant 2.2.7** and **VirtualBox 6.1.4**.

The scripts may work with earlier versions, but I did not test with them.

## Usage

### 1. Create workspace
```shell
$ mkdir workspace
```

### 2. Clone the repository
```shell
$ cd workspace/
$ git clone git@github.com:gundamew/bsbox.git
```

### 3. Create guest machine
```shell
$ cd bsbox
$ vagrant up
```

Remember to add `192.168.33.10` to your hosts file.
