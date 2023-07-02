# Heroes API

> NOTE: This project was pushed to `origin/master` branch. Switch to master branch for you to get a view of the API documentation.

The heroes API is a Rails API backend project that provides a JSON API for managing heroes and their 
powers. 
The API allows you to perform some CRUD operations heroes, powers and heroe powers.

## Setting up the database.
1. Clone this repository to your local machine.
2. Navigate to the project directory, `cd heroes_api`.
3. Run `bundle install` to install the dependencies.
4. Run `rails db:migrate db:seed` to migrate and seed data. For some cases you have to run `rails db:create` if you encounter an error while migrating.
5. Run `rails s` to get the server running.

The API will be available on http://localhost:3000

## MODELS
This API has three models
➳ `hero.rb`, `power.rb` and `hero_power.rb`. These models contains the relationship between between heroes and their powers.

## API Endpoints
The API has the following endpoints as requested by the project's guidelines.

➢`GET/heroes`: Retrieves a list of all heroes.
➢`GET/heroes/:id`: Retrieves details of a specific hero.
➢`GET/powers`: Retrieves a list of all powers.
➢`GET/powers/:id`:  Retrieves details of a specific power.
➢`PATCH/powers/:id`: Updates an existing power.
➢`POST/hero_powers`: Creates a new hero power relationship.


You can use Postman to test these endpoints.

## Validations
➳ `HeroPower` model has the following validation:
       `strength` must be one of the following values: 'Strong', 'Weak', 'Average'
➳ `Power` model has the following validation:
       `description` must be present and at least 20 characters long

## Author
Samuel Karanja.