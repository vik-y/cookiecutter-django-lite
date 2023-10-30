# cookiecutter-django-lite

Welcome to cookiecutter-django-lite, a streamlined Django template that enables you to quickly set up a Django-based microservice or API. It's inspired by [cookiecutter-django](https://github.com/cookiecutter/cookiecutter-django) but aims to offer a more lightweight starting point.

## Features

* **Database Configuration**: Choose between SQLite or PostgreSQL for your database needs.
* **RESTful Configuration**: Django REST framework (DRF) is integrated by default, so you can start building your RESTful API right away.
* **API Schema with drf-spectacular**: Swagger UI comes out-of-the-box for easy API documentation and interaction.
* **Sample App**: A minimal sample application (`sample_app`) is included to demonstrate how to work with Django and DRF. This can be used as a starting point, extended, or removed altogether.
* **Docker Support**: Docker and docker-compose are integrated by default, so you can easily containerize your application.
* **Testing**: Pytest is integrated by default, so you can start writing tests right away.
* **Django Admin** Django Admin is enabled by default, so you can easily manage your database records.

## Why This Project?

The goal is to make it as simple as possible to quickly build microservices with Django. This project was inspired by [cookiecutter-django](https://github.com/cookiecutter/cookiecutter-django), but we wanted to eliminate some of the additional boilerplate that comes with it.

Additionally, this template aims to be a drop-in replacement for FastAPI. It provides many of the same features, allowing Django developers to reap the benefits of FastAPI without having to leave the comfort of the Django framework.

## Use Cases

Use case 1
- You want to build a microservice or API with Django.

Use case 2
- You want to build a microservice or API with FastAPI, but you're already familiar with Django and don't want to learn a new framework.

Use case 3
- You want to quickly build a API only application 


## Quick Start

For detailed instructions refer to [docs](https://cookiecutter-django-lite.readthedocs.io/en/latest/)

To get started quickly - follow these steps:

1. Install cookiecutter if you haven't already:
   ```bash
   pip install cookiecutter
   ```
   
2. Generate a new Django project:
   ```bash
   cookiecutter gh:yourusername/cookiecutter-django-lite
   ```

3. Follow the interactive prompts to configure your new project.

4. Change directory into your newly created project folder and run:
   ```bash
   python manage.py runserver
   ```

That's it! Your new Django project should be up and running. 

## Todo
Roadmap 
- [ ] Add support for linters (flake8, black, isort)
- [ ] Add support for pre-commit hooks
- [ ] Add support for vscode settings
- [ ] Add support for ruff with vscode 
- [ ] Add Basic CI/CD with Github Actions
- [ ] Add celery support 
- [ ] Add basic token authentication 
- [ ] Add deployment support + instructions - AWS EC2


## Contribution

Feel free to contribute to this project by submitting issues, pull requests, or giving feedback. We appreciate your support!

## License

This project is open source under the MIT License. See the [LICENSE.md](LICENSE.md) file for full license information.

Happy coding! 🎉