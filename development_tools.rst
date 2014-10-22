Phase I: Development tools
==========================
In this section we will talk about the essential tools that every developer uses.

Virtual Machine
----------------

Definition
^^^^^^^^^^
In computing, a virtual machine (VM) is an emulation of a particular
computer system. Virtual machines operate based on the computer architecture
and functions of a real or hypothetical computer, and their implementations
may involve specialized hardware, software, or a combination of both [#w1]_.

Software
^^^^^^^^

- VirtualBox
- VMware
- LinuxKVM
- etc...

We will focus entirely on `VirtualBox <https://www.virtualbox.org/>`_.

Instructions
^^^^^^^^^^^^

#. Download and install the VirtualBox
#. Download an image of an operating system. We will use `Ubuntu <http://www.ubuntu.com/>`_
   in this course. Download the `ISO image <http://www.ubuntu.com/download/desktop/thank-you?country=--&version=14.04.1&architecture=amd64>`_
#. In VirtualBox ``Create a Virtual Machine``
#. Configure the RAM to be allocated
#. Configure a hard drive for the image

Command Line Interface
----------------------
Command Line Interface or CLI is the fastest way of communicating with a
computer. CLI can retrive data from the current system or run a task on a remote
server. Also, CLI provides a way to run periodic commands and runs long running
commands in the background, ``Daemons``,.

In this chapter, we will discover the import commands, and we will teach you to
use them. After opening up a terminal in Ubuntu, type in the following command
``ls``. As you can see in the terminal, a list of files and directories showed
up. ``ls`` is the command to list the contents of the current directory.

Important commands
^^^^^^^^^^^^^^^^^^
As you might expect, anything that you can do in the GUI you can do in the
command line. CLI has many Shells e.g. `Bourne Shell
<http://en.wikipedia.org/wiki/Bourne_shell>`_,
`Korn SHell <http://en.wikipedia.org/wiki/Korn_shell>`_,
`Bourne_Agine_SHell <http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29>`_
...etc. Shells are program that help you execute commands on the computer.
They have a special language, and they provide basic programming capabilities.
Below are a list of important commands that you should be comfortable with.

- | ls
  | Lists the contents of the current directory
  | possible usage:
  | ``ls -a`` to list all files and directory including hiding directory or ``dotfiles``
  | ``ls -l`` to list the files and directory with more information about their permissions, owner, group that owns it, disk size and creation date

- | pwd
  | Stands for Print Working Directory
  | pwd prints the current working directory from ``/`` or ``root directory``

- | cd
  | Change Directory
  | Once invoked it will change your working directory to a new one
  | possible usage:
  | ``cd /tmp`` to change to the temporary directory

- | cat
  | Concatenate files and prints them to ``stdout``
  | possible usage:
  | ``cat file1 file2``
  | ``cat file1`` to print the content of file1 to ``stdout``

- | man
  | Return the help manual for any command in the system.

- rm

- mv

- cp

- grep

- ssh

- scp

- nano

- find

- diff

- comm

- head

- tail

- less

- sort


Configuring software
--------------------
.. todo::

Text Editors
------------
.. todo::

Integrated development environment
----------------------------------
.. todo::

Documentation
-------------
.. todo::

.. [#w1] `Wikipedia <http://en.wikipedia.org/wiki/Virtual_machine>`_
