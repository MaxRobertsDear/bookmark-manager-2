## Boookmark Manager

### Makers Academy - Week 4 Project

#### Objectives for the week
* ✅ Build a simple web app with a database
* ✅ Follow an effective debugging process for database applications
* ✅ Explain the basics of how databases work (e.g. tables, SQL, basic relationships)

#### Goals targeted by this challenge
* ✅ I grow collaboratively
* ✅ I can model anything
* ✅ I can TDD anything
* ✅ I can program fluently

#### Challenges
* [x] Creating User Stories
* [x] Setting up a Web Project
* [x] Viewing bookmarks
* [x] Setting up a Database
* [x] Creating your First Table
* [x] Manipulating Table Data
* [x] Interacting with Postgres from Ruby
* [x] Upgrading your Toolset
* [x] Setting up a Testing Environment
* [x] Creating bookmarks
* [x] Wrapping Database data in program objects
* [x] Deleting bookmarks
* [x] CRUD
* [x] Extracting a Database Setup object
* [x] Validating bookmarks
* [x] One to Many Relationships
* [x] Many to Many Relationships
* [ ] Registration
* [ ] Authentication


### Solutions

### Requirement 1: show a list of bookmarks

  User Story 1

As someone who is very busy
So that I can revisit my favourite webpages
I want to see a list of all my bookmarks

  Domain Model 1
  
Nouns: busy person, favourite webpages, list of bookmarks
Verbs: revisit, see

![Bookmark Manager Domain Model](./public/images/bookmark_manager_1.png)

### To set up the project
Clone this repository and then run:

```
bundle
```

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 4567

To view bookmarks, navigate to `localhost:4567/bookmarks`.
