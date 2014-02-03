CS152
=====

In this group, we'll be running our fortran program in a Ubuntu VM.

There are two tools that makes creating a Ubuntu VM within your Mac/Windows really easy:
- Vagrant (http://www.vagrantup.com/downloads)
- Virtualbox (https://www.virtualbox.org/wiki/Downloads)

Steps to a running Fortran77 compiler:

- Make sure you installed Vagrant and Virtualbox.
- run `$ vagrant up` in the root of this folder, which will take 1-2 minutes. 
- run `$ vagrant ssh`.
- You are now ssh-ing into the Ubuntu VM.
- Run `$ sudo apt-get install fort77`.
- Compiler is ready, compile a fortran program by running `$ fort77 <filename>`.
