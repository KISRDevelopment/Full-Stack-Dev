******
Python
******
Python is an  general purpose object oriented programming language that was
created by `Guido Van Rossum <http://en.wikipedia.org/wiki/Guido_van_Rossum>`_.
The language has many implementations e.g. `CPython
<https://www.python.org/>`_, `Jython <http://www.jython.org/>`_, `Pypy
<http://pypy.org/>`_, ...etc. We focus on the CPython implementaion in this
course, and feel free to check the rest of them out.

Python is widly used programing language, therefore it is being taught by many
schools as an introductory programming language in computer science classes. In
this course we will try to teach you how to use it.

From now on when we use the word **python** we mean the **CPython**
implementation of the **Python** programming language.

Now to start a terminal session using ``ALT+CTRL+T`` and launch the **python**
`REPL <http://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop>`_.
Once you started the interpreter you should see the following output

.. code-block:: python

   Python 2.7.5 (default, Mar  9 2014, 22:15:05) 
   [GCC 4.2.1 Compatible Apple LLVM 5.0 (clang-500.0.68)] on darwin
   Type "help", "copyright", "credits" or "license" for more information.
   >>> 

This is the **python** prompt it, and it shows useful information about the
current **python** version and the compiler that **python** was compiled with.

The ``>>>`` is the begining of the REPL and anything you type and hit **Enter**
it will evaluate on the second line and print out the result. Once it's done
executing it will display the same prompt again waiting for the next command.

Now we will learn about the useful operations that **python** offers in the
command line.

Integer Operations
==================

.. code-block:: python

   >>> 3 + 7 # Addition
   10
   >>> 10 - 9 # Subtraction
   1
   >>> 9 - 100 # Handles negative numbers 
   -91      
   >>> 5 * 6 # Multiplications
   30
   >>> 15 / 5 # division
   3
   >>> 14 / 3 # integer division 
   4
   >>> 14 // 3 # forcing integer division
   4
   >>> 5 ** 7 # Power operator
   78125
   >>> 10 % 4 # modules operations
   2
   >>> 1 << 4 # Left bitshift 
   16
   >>> 16 >> 2 # Right bitshift
   4
   >>> 3 & 2 # Bit And operator
   2
   >>> 1 | 4 # Bit Or operator
   5
   >>> ~ 1 # 2's complement
   -2
   >>> 1 ^ 10 # XOr operator
   11
