# Welcome to My Users App
***

## Task
Implement a simple web application using the Model-View-Controller (MVC) architecture. The application should allow users to create, read, update, and delete user data from an SQLite database. The application should also have a RESTful API that allows users to interact with the data using HTTP requests. Finally, the application should have an HTML view that displays all of the users in a table.

## Description
This application is a simple implementation of the Model-View-Controller (MVC) architecture. It uses an SQLite database to store user data, and provides a RESTful API that allows users to interact with the data using HTTP requests. The application also has an HTML view that displays all of the users in a table.

The User model provides the following methods:

create(user_info): Creates a new user with the provided information, and returns a unique ID.
find(user_id): Retrieves the user with the provided ID, and returns all information contained in the database.
all: Retrieves all users from the database, and returns a hash of users.
update(user_id, attribute, value): Retrieves the user with the provided ID, updates the specified attribute with the provided value, and returns the updated user hash.
destroy(user_id): Retrieves the user with the provided ID, and deletes it from the database.
The RESTful API provides the following routes:

GET /users: Retrieves all users (without passwords) from the database.
POST /users: Creates a new user with the provided information, and returns the created user (without password).
POST /sign_in: Authenticates the user with the provided email and password, and adds a session containing the user ID in order to be logged in. Returns the authenticated user (without password).
PUT /users: Updates the password for the currently logged in user, and returns the updated user (without password).
DELETE /sign_out: Logs out the currently logged in user. Returns nothing (code 204 in HTTP).
DELETE /users: Deletes the currently logged in user. Logs out the user first, and then deletes the user from the database. Returns nothing (code 204 in HTTP).
The HTML view provides a simple table that displays all of the users in the database. The view is located in the views/index.html file.

## Installation
1. Clone the repository from GitHub:
    git clone https://github.com/your-username/your-repo.git
2. Navigate to the project directory:
    cd your-repo
3. Install the required gems:
    bundle install




## Usage
1. Send HTTP requests to the API routes to interact with the User model.
2. Access the HTML page at the root route to view all users.

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>
