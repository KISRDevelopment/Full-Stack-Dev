**************************
Phase I: Development tools
**************************

In this section we will talk about the essential tools that every developer uses.

Virtual Machine
===============

Definition
----------
In computing, a virtual machine (VM) is an emulation of a particular
computer system. Virtual machines operate based on the computer architecture
and functions of a real or hypothetical computer, and their implementations
may involve specialized hardware, software, or a combination of both [#w1]_.

Software
--------

- VirtualBox
- VMware
- LinuxKVM
- etc...

We will focus entirely on `VirtualBox <https://www.virtualbox.org/>`_.

Exercises
---------

#. Download and install the VirtualBox
#. Download an image of an operating system. We will use `Ubuntu <http://www.ubuntu.com/>`_
   in this course. Download the `ISO image <http://www.ubuntu.com/download/desktop/thank-you?country=--&version=14.04.1&architecture=amd64>`_
#. In VirtualBox ``Create a Virtual Machine``
#. Configure the RAM to be allocated
#. Configure a hard drive for the image

Command Line Interface
======================

Command Line Interface or CLI is the fastest way of communicating with a
computer. CLI can retrive data from the current system or run a task on a remote
server. Also, CLI provides a way to run periodic commands and runs long running
commands in the background, ``Daemons``,.

In this chapter, we will discover the import commands, and we will teach you to
use them. After opening up a terminal in Ubuntu, type in the following command
``ls``. As you can see in the terminal, a list of files and directories showed
up. ``ls`` is the command to list the contents of the current directory.

Important commands
------------------

As you might expect, anything that you can do in the GUI you can do in the
command line. CLI has many Shells e.g. `Bourne Shell
<http://en.wikipedia.org/wiki/Bourne_shell>`_,
`Korn SHell <http://en.wikipedia.org/wiki/Korn_shell>`_,
`Bourne_Agine_SHell <http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29>`_
...etc. Shells are program that help you execute commands on the computer.
They have a special language, and they provide basic programming capabilities.
Below are a list of important commands that you should be comfortable with.

- | **ls**
  | Lists the contents of the current directory:
  | ``ls -a`` to list all files and directory including hiding directory or ``dotfiles``
  | ``ls -l`` to list the files and directory with more information about their permissions, owner, group that owns it, disk size and creation date

- | **pwd**
  | Stands for Print Working Directory:
  | pwd prints the current working directory from ``/`` or ``root directory``

- | **cd**
  | Change Directory.
  | Once invoked it will change your working directory to a new one:
  | ``cd /tmp`` to change to the temporary directory

- | **mkdir**
  | Make Directory:
  | ``mkdir bar`` creates a directory called bar

- | **cat**
  | Concatenate files and prints them to ``stdout``:
  | ``cat file1 file2``
  | ``cat file1`` to print the content of file1 to ``stdout``

- | **man**
  | Return the help manual for any command in the system:
  | ``man shell-command``

- | **rm**
  | Removes a file or directory:
  | ``rm /path/to/file1`` to delete file1
  | ``rm -r /path/to/dir1`` to recursively delete dir1 and all its contents

- | **mv**
  | Moves files or directories to different location (path). Also it can be used
  | to rename file or directories:
  | ``mv file file.txt`` to rename
  | ``mv Downloads/file.zip Documents/``

- | **cp**
  | Copy file or directory from one location to another:
  | ``cp file1 Documents/``
  | ``cp -R /tmp Documents/tmp``

- | **grep**
  | Grep is a pattern search that uses `regular expresion <http://en.wikipedia.org/wiki/Regular_expression>`_ to look for a pattern
  | in text. It's a powerful if you know regular expresion:
  | ``grep 'this' words.txt`` looks for the word this inside a file named words.txt

.. seealso:: Take a look at the `Python Docs <https://docs.python.org/2/howto/regex.html>`_ for more information

- | **ssh**
  | SecureShell is a program that connects you to remote computers and execute
  | commands on them:
  | ``ssh alice@foo.com``

- | **scp**
  | Secure copy like FTP but uses SSH protocol to transmit data:
  | ``scp words.txt alice@foo.com:Desktop/store``

- | **nano**
  | Nano is an easy to use terminal text editor:
  | ``nano file1``

- | **find**
  | Find is a powerful command. Take a look at the manual of ``find`` to see all
  | the options that you can use with it:
  | ``find . -type f -name foo`` looks for a file that's named foo

- | **diff**
  | Differences between two files. The command ``diff`` prints out the difference
  | between two files:
  | ``diff v1/foo1 v2/foo1``

- | **comm**
  | Common is a command that compares two files and print the common bytes
  | between them:
  | ``comm v1/foo1 v2/foo1``

- | **head**
  | Head prints out first lines of a file:
  | ``head foo.txt``

- | **tail**
  | Tail is simliar to head but it prints out the last lines of a file:
  | ``tail foo.txt``

- | **less**
  | Less is a file viewer, and it has search features. The name came from the
  | Unix philosophy "Less is more, more is less"[#less]_:
  | ``less foo.txt``

- | **sort**
  | Sort sorts text:
  | ``sort foo``

- | **sudo**
  | Super User DO is a command that escalate and run the giving command as **root**


Exercises
---------
#. Create a directory called **foo**
#. Go inside the directory and create a file called **notes.txt** and in that write
a message e.g. "Hello terminal".
#. Execute the following command ``{Path to file}/bin/directory.sh``

.. tip:: Don't forget the path replace {Path to file} with the correct path string


Software Package Managers
=========================
So far in the course we have learned how to set up a fresh Ubuntu virtual
machine and how to use some of the basic built in shell commands. Plain Ubuntu
is extremely powerful and we can do a lot with it but at some point, whether
we are setting up a development machine or a production server, we will need
to install and manage software, tools, programming libraries, etc...
As a devloper you'll often find yourself rapidly installing, configuring, testing,
uninstalling, adjusting, reinstalling multiple version of multiple software
packages.
And if you don't keep track of them they can conflict with each other.
And break each other.
And make your life miserable.

Luckily, back in the stone-age of Linux (the 90s), the combined efforts of many
distressed developers resulted in the concept of a package manager!
Package managers will search for and install or uninstall software on your system,
ensure that dependencies and conflicts are taken care of, and generally help you
manage the software on your machine.

- | **Aptitude**
  | This is Linux's very powerful built-in package manager.
  | Basic Usage:
  | ``apt-get install foo-package``

- | **PIP**
  | PIP is the software manager for Python libraries and packages.
  | (PIP stands for "PIP Installs Python". Developers are weird)
  | Basic Usage:
  | ``pip install pyfoo``

Exercises
---------
#. Read the Aptitude man page
#. Install PIP, python3, nginx using Aptitude
#. Read the PIP help file ``pip help``
#. Install django, selenium, uwsgi using PIP

More Information:
-----------------
There are many more package managers than we mentioned in this section.
We would recomment looking at:

- npm (node.js)
- yum (Linux)
- rpm (Linux)
- homebrew (Mac OSX)
- macports (Mac OSX)

Editors
=======
.. todo::

Software Configuration
======================
.. todo::

Documentation
=============
.. todo::

.. [#w1] `Wikipedia <http://en.wikipedia.org/wiki/Virtual_machine>`_
.. [#less] `Less history <http://en.wikipedia.org/wiki/Less_%28Unix%29#History>`_
