# Linux PAM

## Prerequisites

* Ruby 2.7.1
* Postgresql >= 9.0

## Configuration

1. Install gems:
    ```
    $ bundle install
    ```
2. Create `config/database.yml` file based on `config/database.yml.template`, replacing
`username` and `password` with your Postgresql credentials.
3. Database setup:
    ```
    $ rake db:setup
    ```
4. Run the migrations:
    ```
    $ rake db:migrate
    ```
5. Run the server:
    ```
    $ rails s
    ```
You should now be able to open the application in your browser by visiting http://localhost:3000/.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
