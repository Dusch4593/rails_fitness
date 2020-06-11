Specs:

 - [X] Using Ruby on Rails for the project (generated new Rails app via terminal)
 - [X] Include at least one has_many relationship (x has_many y; e.g. User has_many Routines)
 - [X] Include at least one belongs_to relationship (x belongs_to y; e.g. RoutineExercise belongs_to Exercise)
 - [X] Include at least two has_many through relationships (x has_many y through z; e.g. Routine has_many Exercise through RoutineExercise)
 - [X] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Routine has_many Exercises through RoutineExercise, Exercise has_many Routines through RoutineExercise)
 - [X] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. routine_exercise.reps)
 - [X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
 - [X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
 - [X] Include signup (through `devise` gem)
 - [X] Include login (through `devise` gem)
 - [X] Include logout (through `devise` gem)
 - [X] Include third party signup/login (how e.g. Devise/OmniAuth)
 - [X] Include nested resource show or index (URL e.g. routines/2/routine_exercises (index) or routines/2/routine_exercises/5 (show))
 - [X] Include nested resource "new" form (URL e.g. routines/1/routine_exercises/new) --> Went with "edit", instead
 - [X] Include form display of validation errors (form URL e.g. /recipes/new)


Confirm:
 - [X] The application is pretty DRY
 - [X] Limited logic in controllers
 - [X] Views use helper methods if appropriate
 - [X] Views use partials if appropriate --> Partials for app/views/routines and app/views/exercises
