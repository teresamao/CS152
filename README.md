CS152
=====

In this group, we'll be running our fortran program in a Ubuntu VM.

There are two tools that makes creating a Ubuntu VM within your Mac/Windows really easy:
- Vagrant (http://www.vagrantup.com/downloads)
- Virtualbox (https://www.virtualbox.org/wiki/Downloads)

Steps to a running Fortran77 compiler:

1) Make sure you installed Vagrant and Virtualbox.
2) run `$ vagrant up` in the root of this folder, which will take 1-2 minutes. 
3) run `$ vagrant ssh`.
4) You are now ssh-ing into the Ubuntu VM.
5) Run `$ sudo apt-get install fort77`.
6) Compiler is ready, compile a fortran program by running `$ fort77 <filename>`.
