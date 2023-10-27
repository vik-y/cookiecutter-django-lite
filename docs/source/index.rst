.. cookiecutter-django-lite documentation master file, created by
   sphinx-quickstart on [date]
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

cookiecutter-django-lite
========================

Welcome to cookiecutter-django-lite's documentation!

.. toctree::
   :maxdepth: 2
   :caption: Table of Contents:
   
Overview
--------

Welcome to cookiecutter-django-lite, a streamlined Django template...

Features
--------

- Database Configuration: Choose between
   - PostgreSQL
   - SQLite
- Django Rest Framework (DRF) Built in 
- Swagger Documentation Built in using drf_spectacular 
- Docker support using docker-compose for development and production
- Sample App with User Model and API to get you started quickly 


Why This Project?
-----------------

The goal is to make it as simple as possible to quickly build microservices with Django. This project was inspired by [cookiecutter-django](https://github.com/cookiecutter/cookiecutter-django), but we wanted to eliminate some of the additional boilerplate that comes with it.

Additionally, this template aims to be a drop-in replacement for FastAPI. It provides many of the same features, allowing Django developers to reap the benefits of FastAPI without having to leave the comfort of the Django framework.

Quick Start
-----------

Install cookiecutter if you haven't already:

.. code-block:: bash

   pip install cookiecutter



Create a new project: Follow the prompts 

.. code-block:: bash

   ❯ cookiecutter https://github.com/vik-y/cookiecutter-django-lite                                                                                                                          
   project_name [Django REST Project]: demoproject
   project_slug [demoproject]:
   Select use_postgres:
   1 - no
   2 - yes
   Choose from 1, 2 [1]: 1
   django_version [>=3.2,<4]:



Create a new virtual environment and install all the dependencies

.. code-block:: bash
   
   python -m venv .venv
   source .venv/bin/activate

   pip install -r requirements/test.txt 
   

Run migrations and start the server 

.. code-block:: bash
   
   $ python manage.py migrate       

   $ python manage.py runserver
   Watching for file changes with StatReloader
   Performing system checks...

   System check identified no issues (0 silenced).
   October 09, 2023 - 08:18:53
   Django version 4.1.8, using settings 'config.settings'
   Starting development server at http://127.0.0.1:8000/
   Quit the server with CONTROL-C.


Sample app is a project configured to use the framework. You can start making modifications to the sample_app or create a new app altogether - for more details regarding the changes to make - refer to this video 

Contribution
------------

Feel free to contribute...

License
-------

This project is open source...

Happy coding! 🎉