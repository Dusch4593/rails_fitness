# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Routine.destroy_all
Exercise.destroy_all

# Users
brandon = User.create(id: 1, name: "Brandon", email: "brandon@example.com", password: "password")
greg = User.create(id: 2, name: "Greg", email: "greg@example.com", password: "password")
joe = User.create(id: 3, name: "Joe", email: "joe@example.com", password: "password")
ryan = User.create(id: 4, name: "Ryan", email: "ryan@example.com", password: "password")

# Routines for Brandon
brandon_routine = brandon.routines.create(name: "Afternoon Struggle", times_per_week: 3)


# Routines for Greg

# Routines for Joe

# Routines for Ryan



# Exercises (IT'S HIGHLY RECOMMENDED YOU RUN `rails db:seed` TO HAVE SOME DEFAULTS TO START WITH)
Exercise.create(name: "Push-ups", exercise_type: "Calisthenics", description: "works the pectoral muscles, triceps, and anterior deltoids")
Exercise.create(name: "Sit-ups", exercise_type: "Abdominal", description: "works the abdomin; similar to crunches but works some extra muscles")
Exercise.create(name: "Jumping Jacks", exercise_type: "Jump", description: "jump with the legs spread wide and the hands going overhead")
Exercise.create(name: "Run/ Jog", exercise_type: "Cardiovascular", description: "improves cardio and respiratory health")
Exercise.create(name: "Crunches", exercise_type: "Abdominal", description: "works the rectus abdominis muscle")
