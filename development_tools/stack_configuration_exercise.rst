############################
Stack Configuration Exercise
############################

In this exercise we are going to use many of the tools we have
learned about during the week to set up our first stack.

This stack will run on a virtual machine and consist of the
following components:

- Application Framework (Django)
- Python WSGI HTTP Server (Gunicorn)
- Web Server (NGINX)
- Database (PostgreSQL)

.. todo:: Insert a diagram of this stack

Step One: Setup Your Virtual Machine
====================================

At this point you should already have a virtual machine up and 
running but if you don't, set one up using the image you created 
on the first day of this course.

Step Two: Install and Create Virtualenv
=======================================

In :doc:`Phase II </team_project_workflow/index>`  we will go into more details about how to install, configure and
use python virtual environments but for now just use the following commands.

Install virtualenv::

        sudo apt-get install python-virtualenv

Create a virtualenv for our python packages::

        virtualenv ~/myenv

.. todo:: Link Phase II. Replace <path>

Step Three: Install and Configure PostgreSQL
============================================

Most Django users prefer to use PostgreSQL as their database server. It is much more robust than MySQL and the
Django ORM works much better with PostgreSQL than MySQL, MSSQL, or others.

Install
-------

First we need to install dependencies for PostgreSQL to work with Django::

        sudo apt-get install libpq-dev python-dev

Then we install PostgreSQL itself::

        sudo apt-get install postgresql postgresql-contrib

Configure
---------

Now we can start configuring PostgrSQL. We need to create a database, create a user, and grant the user we created 
access to the database we created. Start off by running the following command::

        sudo su - postgres

Your terminal prompt should now say `postgres@yourserver`. Run the following command to create a database::

        createdb mydb

You now have a database named mydb. Now create a database user::

        createuser -P {{username}}

.. note:: Replace the place holder {{username}} with the new username without {{}}

You will now be met with a series of 6 prompts. The first one will ask you for the name of the new user. Use whatever
name you would like. The next two prompts are for your password and confirmation of password for the new user. 
For the last 3 prompts just enter "n" and hit "enter". This just ensures your new users only has access to what you
give it access to and nothing else. Now activate the PostgreSQL command line interface::

        psql

Grant the new user access to the new database::

        GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;

You now have a PostgreSQL database and a user to access that database with.

Step Four: Install Django and Create a Project
===============================================

Install
-------

We activate our virtualenv before we install any python packages::

        source ~/myenv/bin/activate

You should now see that "(myenv)" has been appended to the beginning of your terminal prompt.
This will help you to know when your virtualenv is active and which virtualenv is active.

We can now install Django in our virtualenv using pip::

        pip install django

.. note:: After running this command you will have Django 1.7 installed in your system

Configure a New Project
-----------------------

With django installed we can now create a new project to test that our stack is working.
First change to the directory where you want your project source to live (we chose home `~`)::

        cd ~

Now run the following command to create a project directory::

        djang-admin.py startproject myproject

If we want django to talk to our database, we need to install a backend for PostgreSQL::

        pip install psycopg2

Now we can edit the django database settings in the settings.py file using a command line editor::

        cd ~/myproject/myproject
        vim settings.py

Find the database settings and edit them to look like this::

        DATABASES = {
                'default': {
                            'ENGINE': 'django.db.backends.postgresql_psycopg2', # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
                            'NAME': 'mydb',                      # Or path to database file if using sqlite3.
                            # The following settings are not used with sqlite3:
                            'USER': 'myuser',
                            'PASSWORD': 'password',
                            'HOST': 'localhost',                      # Empty for localhost through domain sockets or           '127.0.0.1' for localhost through TCP.
                            'PORT': '',                      # Set to empty string for default.
                }
        }

Save and exit the file. Then move up to your main project directory and run django's database configurtion tool::

        cd ~/myproject/
        python manage.py syncdb

.. note:: Familiarize yourself wuth ``./manage.py makemigrations`` and ``./manage.py migrate`` commands

You should see some output describing what tables were installed, followed by a prompt asking if you want to create a superuser.
Just say no for now.

Step Five: Install and Configure Gunicorn
=========================================

Gunicorn is a very powerful Python WSGI HTTP server.

Install
-------

Gunicorn is a python package so activate your virtualenv and install it using pip::

        source ~/myenv/bin/activate
        pip install gunicorn

Configure
---------

For now we are going to configure gunicorn using the most basic configuration with default settings::

        gunicorn --bind localhost:8001 myproject.wsgi:application


.. note:: | Please be careful it's a Python import syntax not a file system path 
          | Also to make the command run in the background append **&** to the end of the line

Now go to your web browser and visit localhost:8001 and see what you get. 
You should get the Django welcome screen.

Step Six: Install and Configure NGINX
=====================================

NGINX is an incredibly fast and light-weight web server. We will use it to serve up our static files for 
our Django app. 

Install
-------

To install nginx just run this command::

        sudo apt-get install nginx

Configure
---------

Make sure that nginx is running:sten:

        sudo service nginx start

We're going to be using NGINX to serve our static files so first we need to decide where our static files
will live. Edit the django settings.py file and add STATIC_ROOT setting it
to the following::

        STATIC_ROOT = '/home/{{ user }}/static/'

.. tip:: Remember to replace {{ user }} with your own username on your VM

Now we can set up NGINX to handle the files in our static directory.
Open a new NGINX config file::

        sudo vim /etc/nginx/sites-available/myproject

Now add the following to the file::

        server {
                listen 80; # to listen on the default HTTP port but you need to be root ;)
                server_name {{your ip}};
                
                access_log off;

                location /static/ {
                        alias /home/{{user}}/static/;
                }

                location / {
                        proxy_pass http://127.0.0.1:8001;
                        proxy_set_header Host $host;
                }
        }

Now we need to set up a symbolic link in the /etc/nginx/sites-enabled directory that points to this 
configuration file. That is how NGINX knows this site is active. Change directories to /etc/nginx/sites-enabled like this::

        cd /etc/nginx/sites-enabled
        sudo ln -s ../sites-available/myproject

.. warning:: Dont' forget to disable the **default** website in ``/etc/nginx/site-enabled``

Now restart NGINX::

        sudo service nginx restart

And that's it! You now have Django installed and working with PostgreSQL and your app is web accessible with NGINX 
serving static content and Gunicorn serving as your app server.

.. tip:: | If it doesn't work that means you forgot to run gunicorn in the background

