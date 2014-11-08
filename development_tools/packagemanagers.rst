*************************
Software Package Managers
*************************

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
There are many more package managers than we mentioned in this section
depending on what kind of web development you are doing.
We would recomment looking at:

- npm (node.js)
- yum (Linux)
- rpm (Linux)
- homebrew (Mac OSX)
- macports (Mac OSX)

