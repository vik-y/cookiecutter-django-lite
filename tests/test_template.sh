#!/bin/sh

set -o errexit
set -x 

mkdir -p .cache 

cd .cache 

# Generate a new project from the template
cookiecutter ../ --no-input --overwrite-if-exists project_name=test

# Change directory to the generated project
cd test

# Create .env file 
mv .env.example .env

# Set up the virtual environment and install dependencies
python -m venv venv
. venv/bin/activate
pip install -r requirements/base.txt
pip install -r requirements/test.txt

# Run migrations
python manage.py migrate

# Run pytests
pytest

# Test building docker image 
docker build -t test .
docker run --rm --entrypoint /bin/bash test -c "pytest"

cd .. 
cookiecutter ../ --no-input --overwrite-if-exists project_name=test use_postgres=yes
cd test 
pip install -r requirements/base.txt
pip install -r requirements/test.txt
pytest 

# Test building docker image
docker build -t test_pg .
docker run --rm --entrypoint /bin/bash test_pg -c "pytest"

# Test - local docker compose should be working 

docker-compose -f docker-compose-local.yaml build 
docker-compose -f docker-compose-local.yaml up -d

sleep 30

echo "Testing curl - should return 200"
docker ps 
curl http://localhost:5001/api/schema 

echo "Cleaning up"
docker-compose -f docker-compose-local.yaml down


# Test - production docker-compose should be working 
docker-compose -f docker-compose-prod.yaml build
docker-compose -f docker-compose-prod.yaml up -d

sleep 30
docker ps
curl http://localhost:5001/api/schema

echo "Cleaning up"
docker-compose -f docker-compose-prod.yaml down 
