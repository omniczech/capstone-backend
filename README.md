# TskTrckr API

# Summary

TskTrckr is a barebones todo list tracker. Users can have any number of lists which themselves can have any number of todos, which can be marked completed when they're finished. The app uses Ember as a JavaScript front end framework paired with a rails API for managing data.

# Links

-   [Deployed Client](https://omniczech.github.io/capstone-frontend/)
-   [Deployed API](https://quiet-gorge-19484.herokuapp.com/)
-   [Client Repo](https://github.com/omniczech/capstone-frontend)
-   [ERD](https://i.imgur.com/XxcscWl.jpg)

# Technologies used

-   Ruby on Rails
-   PostgreSQL
-   Heroku
-   Git

# Development process

First steps were to scaffold resources for both lists and todos. Users have many lists and lists have many todos. Once scaffolding was complete, the next step was to run curl scripts to ensure resources could be created and that the information was being formatted correctly.

At this point I went over to the front end and began to work on making ui elements to allow for creation of these resources. I encountered issues at this point with the view on the front end not updating when todos were created. As a result I had to alter the serializers for both resources to return IDs instead of entire resources for related resources.

A resource for the planned teams feature was also scaffolded, and a join table for users and teams was also created. These will be used for the planned functionality to allow users to create teams which will share lists among their members.

# Routes

| Verb   | URI Pattern | Controller#Action    |
| ------ | ----------- | -------------------- |
| POST   | /users      | user#sign-up         |
| POST   | /users      | user#sign-in         |
| PATCH  | /users/:id  | user#change-password |
| DELETE | /users/     | user#sign-out        |
| GET    | /lists      | list#index           |
| GET    | /lists/:id  | list#show            |
| POST   | /lists      | list#create          |
| PATCH  | /lists/:id  | list#update          |
| DELETE | /lists/:id  | list#delete          |
| GET    | /todos      | todo#index           |
| GET    | /todos/:id  | todo#show            |
| POST   | /todos      | todo#create          |
| PATCH  | /todos/:id  | todo#update          |
| DELETE | /todos/:id  | todo#delete          |

# Future Features

-   A team has_many lists

# Installation

1.  Fork and clone this Repo
2.  Navigate to the repo and `bundle install` to install dependencies
3.  Run `bin/rails db:create` to create a database
4.  Run `bin/rails db:migrate` to configure database
5.  Run `bin/rails server` and go to localhost:4741 in your browser
6.  If you haven't already, follow instructions for installing the front end linked in this repo
