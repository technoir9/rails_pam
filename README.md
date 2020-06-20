# Linux PAM

**Note:** this works correctly only on Linux.

## Prerequisites

* Ruby 2.7.1
* Postgresql >= 9.0
* node.js >= 8.16
* `libpam0g-dev` installed for PAM. To install it on Ubuntu run:
    ```
    $ sudo apt-get install libpam0g-dev
    ```

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

## Usage

To sign in using system user credentials, add @pam at the end of the user name as email on login form.
For example, if your user's name if `fred`, then fill the email field as `fred@pam`.
