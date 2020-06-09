class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in?
      @exercises = Exercise.all
    else
      redirect_to welcome_page_path
    end
  end


  def new
  end

  def create
  end

  def show
    @routine = current_user.routines.find_by(id: params[:routine_id])
    @routine_exercise = @routine.routine_exercises.find_by(exercise_id: @exercise.id)
  end

  def edit
  end

  def update
    if @exercise.update(exercise_params)

      redirect_to routine_exercise_path(@exercise)
    else
      render :edit
    end
  end

  def destroy
    @exercise.destroy
    redirect_to routines_path
  end

  private
  def exercise_params
    params.require(:exercise).permit(:id, :name, :exercise_type, :description, :routine_exercises_attributes => [:id, :sets, :reps])
  end

  def set_exercise
    @exercise = Exercise.find_by(id: params[:id])
  end

end
