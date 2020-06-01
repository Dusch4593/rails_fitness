# Flatiron Fitness, Rails Edition

A fitness tracker app that allows users to create accounts where they can create  
many routines, which can contain many exercises.

# Installation and Setup
1. Fork/ clone this repo --> Save somewhere on your machine --> `cd` into the repo

2. Run `bundle install` for gem setup

3. Run `rails db:migrate` to setup database and tables

4. Run `rails db:seed` to install seed (includes default exercises to get started) (NOTE: This should only be run **once**)

5. Run `rails s` and head over to the browser to view the site

# Usage
At the root page, the User may choose to either sign in to an existing account or sign up for a new one. Whether they login or signup, the User has the option of doing so with third-party authentication (through sites like Facebook and GitHub).

**IMPORTANT NOTE** : *If you choose to sign up/ login through an existing account, please stick with whatever account  
you choose from that point on. If you sign out and try to login again through a different existing account, you  
will be redirected to the signup page, from where you can just click the appropriate login link to log in  
normally.*

The User is then taken to their `/routines` page where they'll see a list of their routines. They can click on any one to see more information. Within an individual routine page (`/routines/:id`) the User will routine info along with a list of its exercises.

A User can click on any exercise within a routine to see more information about the exercise (`/routines/:id/exercises/:id`). They'll find things like the exercise's type, a description, along with sets and reps.

Along with creating and viewing routines and exercises, the User can also edit them. A User can also choose to either simply remove an exercise from a routine (soft-destructive) or delete the exercise entirely (hard-destructive). (CAUTION: Deleting an exercise outright removes *all* instances of that exercise from all the User's other routines.)

# Contributing
Any and all suggesting are welcome! Please feel free to [submit a pull-request](https://github.com/Dusch4593/flatiron_fitness_rails_app/pulls)
or [report a problem](https://github.com/Dusch4593/flatiron_fitness_rails_app/issues) in the "Issues" tab.

# License
This app is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT)
