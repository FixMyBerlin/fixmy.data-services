# fixmy.data-services

A docker container providing a heroku client.

## Deployment

Log in to Container Registry:

    $ heroku container:login

Build the image and push to Container Registry:

    $ heroku container:push worker

Then release the image to your app:

    $ heroku container:release worker

## Usage

You can execute any Heroku client command, e.g. to copy the database from the live app to staging run

    $ heroku run -a fixmy-data-service --type worker "pg:copy -a fixmyplatform-develop fixmyplatform::DATABASE_URL DATABASE"
