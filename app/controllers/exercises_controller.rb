class ExercisesController < ApplicationController
  def new
  end

  def index
    if user_signed_in?
      @exercises = Exercise.all
    else
      redirect_to welcome_page_path
    end
  end

  def create
  end

  def show
    @routine = current_user.routines.find_by(id: params[:routine_id])
    @exercise = @routine.exercises.find_by(id: params[:id])
    @routine_exercise = @routine.routine_exercises.find_by(exercise_id: @exercise.id)
  end

  def edit
  end

  def delete
  end

end
