**********************
Command Line Interface
**********************

Command Line Interface or CLI is the fastest way of communicating with a
computer. CLI can retrive data from the current system or run a task on a remote
server. Also, CLI provides a way to run periodic commands and runs long running
commands in the background, ``Daemons``,.

In this chapter, we will discover the import commands, and we will teach you to
use them. After opening up a terminal in Ubuntu, type in the following command
``ls``. As you can see in the terminal, a list of files and directories showed
up. ``ls`` is the command to list the contents of the current directory.

Important commands
==================

As you might expect, anything that you can do in the GUI you can do in the
command line. CLI has many Shells e.g. `Bourne Shell
<http://en.wikipedia.org/wiki/Bourne_shell>`_,
`Korn SHell <http://en.wikipedia.org/wiki/Korn_shell>`_,
`Bourne_Again_SHell <http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29>`_
...etc. Shells are program that help you execute commands on the computer.
They have a special language, and they provide basic programming capabilities.
Below are a list of important commands that you should be comfortable with.

- | **pwd**
  | Stands for Print Working Directory:
  | pwd prints the current working directory from ``/`` or ``root directory``
  |

- | **mkdir**
  | Make Directory:
  | ``mkdir foo`` creates a directory called foo
  | ``mkdir -p foo/bar/baz`` creates baz and all the missing directories in the path to it
  | Exercise:

    - Make a directory called ``temp``
    - Make a directory at the path ``temp/stuff``
    - Make a directory at the path ``temp/stuff/things``
    - Can you create a directory at ``temp/stuff/things/frank/joe/alex/john`` using a single command?

- | **cd**
  | Change Directory.
  | Once invoked it will change your working directory to a new one:
  | ``cd temp`` to change to the temp directory you created in the last exercise
  | Exercise:

    - Change to the ``temp`` directory. Check where you are using ``pwd``.
    - Change to the ``stuff`` directory. Check where you are.
    - Change directly to the ``john`` directory in one command.
    - Use the command ``cd ..``. Where did you end up?
    - Where does ``cd ../../..`` take you?
    - What about ``cd .``?
    - Just ``cd``?

- | **ls**
  | Lists the contents of the current directory:
  | ``ls -a`` to list all files and directory including hidden directory or ``dotfiles``
  | ``ls -l`` to list the files and directory with more information about their permissions, owner, group that owns it, disk size and creation date
  | Exercise:

    - Navigate back to your home directory ``~``.
    - Go to ``temp`` and use ``ls`` to see what is in it.
    - While in ``temp`` try ``ls -lR``. What did it do?
    - Use a combination of ``cd``, ``ls`` and ``pwd`` to explore the files on your machine.

- | **touch**
  | Creates an empty file in the current directory:
  | ``touch CaptainAwesomesauce.txt`` creates a blank text file called CaptainAwesomesauce.txt
  |

- | **cp**
  | Copy file or directory from one location to another:
  | ``cp file1 file2`` copies the contents of file1 into file2
  | ``cp file1 Documents/`` copies file1 into the Documents directory
  | ``cp -r /tmp Documents/tmp`` copies the contents of /tmp into Documents/tmp
  | Exercise:

    - Inside ``temp`` create a file called ``iamcool.txt``.
    - Make a copy of it called ``awesome.txt``.
    - Make a directory called ``stuff`` and copy ``awesome.txt`` into it.
    - Without leaving ``temp`` check the contents of ``stuff``
    - Copy ``stuff`` and all its contents into a new directory called ``things``.
    - Without leaving ``temp`` check the contents of ``things``.

- | **mv**
  | Moves files or directories to different location (path). Also it can be used
  | to rename files or directories:
  | ``mv file file.txt`` renames file to file.txt
  | ``mv Downloads/file.zip Documents/`` moves file.zip from Downloads/ to Documents/
  | Exercise:

    - Change the name of the file ``awesome.txt`` to ``notawesome.txt``
    - Change the name of the directory ``stuff`` to ``foo``
    - Move the file ``iamcool.txt`` from ``temp`` into ``foo``

.. warning::
    Be careful when passing paths!

    Paths can be:
        - **Absolute Paths** relative to root
          e.g. ``/etc/init/``
        - **Realtive Paths** from your current working directory
          e.g. ``../foo/bar/``, ``temp/stuff/awesome.txt``

- | **nano**
  | Nano is an easy to use terminal text editor:
  | ``nano file1`` opens file1 for editing
  |

- | **less**
  | Less is a file viewer, and it has search features. The name came from the
  | Unix philosophy "Less is more, more is less"[#less]_:
  | ``less foo.txt`` page through foo.txt
  |

- | **cat**
  | Concatenate files and prints them to ``stdout``:
  | ``cat file1`` spits the content of file1 to ``stdout``
  | ``cat file1 file2`` concatenates file1 to file2 then spits the contents to ``stdout``
  | Exercise:

    - Create a file called ``zen.txt`` with the following content::

        Beautiful is better than ugly.
        Explicit is better than implicit.
        Simple is better than complex.
        Complex is better than complicated.
        Flat is better than nested.
        Sparse is better than dense.
        Readability counts.
        Special cases aren't special enough to break the rules.
        Although practicality beats purity.
        Errors should never pass silently.
        Unless explicitly silenced.
        In the face of ambiguity, refuse the temptation to guess.
        There should be one-- and preferably only one --obvious way to do it.
        Although that way may not be obvious at first unless you're Dutch.
        Now is better than never.
        Although never is often better than *right* now.
        If the implementation is hard to explain, it's a bad idea.
        If the implementation is easy to explain, it may be a good idea.
        Namespaces are one honking great idea -- let's do more of those!
    - View it using ``less`` and ``cat``. What's the difference?

- | **rm**
  | Removes a file or directory:
  | ``rm /path/to/file1`` to delete file1
  | ``rm -r /path/to/dir1`` to recursively delete dir1 and all its contents
  | Exercise:

    - Go to the ``temp`` directory
    - Remove the file ``notawesome.txt``.
    - Remove the directory ``things`` and all its content.

- | **echo**
  | Takes a string of text and prints it to ``stdout``
  | ``echo Hello world``
  |

- | **|**
  | The Pipe character which takes the output of the left command and inputs it to the right command
  | ``ls | grep ""``
  |

- | **>**
  | Redirect to character; it redirect the output of the command to a file
  | ``echo Hello > foo.txt``
  |

- | **>>**
  | Append character; it appends the output to a file
  | ``echo Hello >> foo.txt``
  |

- | **<**
  | Input in character; it inputs the text of a file to the command
  | ``cat < foo.txt``
  |

- | **man**
  | Return the help manual for any command in the system:
  | ``man shell-command``

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

- | **sort**
  | Sort sorts text:
  | ``sort foo``

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

- | **sudo**
  | Super User DO is a command that escalate and run the giving command as **root**

- | **``** or **${}**
  | Backticks command; which execute the command inside it and return the output
  | ``cat `ls *txt```

- | **env**
  | Prints out all the environments variables
  | ``env``

- | **export**
  | Export a local varialble to become a environment variable
  | ``export VAR``

- | **ifconfig**
  | To check the network cards and the ip address

- | **alias**
  | To alias command and modify them
  | ``alias l="ls -al"``

Exercises
=========

1. Create a directory called **foo**.
2. Go inside the directory and create a file called **notes.txt**
   and in that write a message e.g. "Hello terminal".
#. Execute the following command ``{Path to file}/bin/directory.sh``.

.. tip:: **{Path to file}** is a place holder don't forget to change it with the
         correct path.


Dotfiles
========

.. [#less] `Less history <http://en.wikipedia.org/wiki/Less_%28Unix%29#History>`_
