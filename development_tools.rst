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

ls
~~

pwd
~~~

cd
~~

cat
~~~

man
~~~

rm
~~

mv
~~

cp
~~

grep
~~~~

ssh
~~~

scp
~~~

nano
~~~~

find
~~~~

diff
~~~~

comm
~~~~

head
~~~~

tail
~~~~

less
~~~~

sort
~~~~

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
