######
Python
######

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

Complex numbers
===============
**Python** supports complex numbers by default. To use or create a complex number just append a ``j`` to a number.

.. code-block:: python
   
   >>> 4 + 6j
   (4+6j)

Float point operations
======================
Just like integers, **Python** supports float point operations

.. code-block:: python

   >>> 0.5 + 6.9
   7.4
   >>> 7 / 3.0
   2.3333333333333335
   >>> 7 / 2.0
   3.5
   >>> 4 * 8.4
   33.6
   >>> .5 - 8.4
   -7.9

Boolean operations
==================

.. code-block:: python
   
   >>> True
   True
   >>> False
   False
   >>> True or False
   True
   >>> True and True
   True
   >>> True and False
   False
   >>> False or False
   False
   >>> not False or False
   True


Variables
=========
To create a variable in **Python**, you have to use the assignment operator which is ``=``. The has to start with latin alphabets or ``_`` 

.. note:: This was changed in **Python 3** where you can use any unicode charector so you can do the following ``س = 10`` and **Python** would accept that.

.. code-block:: python
   
   >>> x = 3
   >>> _r = 100
   >>> x
   3
   >>> _r
   100
   >>> y = x + _r
   >>> y
   103

Strings
=======
**Python** would treat any thing inside ``"``, ``'`` or ``'''`` as a valid string.

.. code-block:: python

   >>> "This is a string"
   'This is a string'
   >>> 'Single quotes can be used like "'
   'Single quotes can be used like "'
   >>> x = """
   ... This is a multiline string
   ... The idea behind it is that you don't 
   ... have to escape charactors
   ... like ' or "
   ... or even a new line \n
   ... """
   >>> x
   '\nThis is a multiline string\nThe idea behind it is that you don\'t \nhave to escape charactors\nlike \' or "\nor even a new line \n\n'
   >>> print x

   This is a multiline string
   The idea behind it is that you don't 
   have to escape charactors
   like ' or "
   or even a new line 


   >>> 

Print
=====
**Python** has a keyword to print to the screen just like ``printf`` or ``cout`` in different languages. Print is very easy to use and it appends ``\n`` at the end of the output unless you append ``,`` where that behavior will be over written.

.. code-block:: python

   >>> y = "This is a line"
   >>> g = "This is another line"
   >>> print y
   This is a line
   >>> print g
   This is another line
   >>> print y,g
   This is a line This is another line
   >>> print y,g,
   This is a line This is another line

Functions
=========
To define a function is **Python**, you have to use the keyword ``def`` and then the name of the function. The name of the function can be any valid identifier. After the name of the function you have to add ``()`` to denotes function can be called without arguments or ``(x,y,z)`` to denotes a function that takes three arguments. Then, to start implementing the body of the function you have to end the function declaration with ``:``. The body of the function must be indented by four spaces.

.. note:: The word **must** is from **PEP 8** to stay consistent across files. The previous paragraph assumes mulitline functions without ``;``

.. code-block:: python
   
   >>> def main():
   ...    print "Hello world"
   ... 
   >>> 
   >>> main()
   Hello world
   >>> def another_main(x,y,z):
   ...    return (x/y)**z
   ... 
   >>> 
   >>> 
   >>> another_main(4,6,2)
   0
   >>> another_main(40,6,2)
   36
   >>> another_main(40,6.0,2)
   44.44444444444445

.. note:: Because the language is dynamiclly typed I didn't have to specify the type for **x, y or z** and I can pass anything as **x, y and z**. So I passed integers or floats.
