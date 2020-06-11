class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]
  before_action :set_routine, only: [:show, :edit, :updatex]
  before_action :set_routine_exercise, only: [:show, :edit, :update, :destroy]


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
  end

  def edit
  end

  def update
    if @exercise.update(exercise_params)
      routine_id = @exercise.routine_exercises.all.last.routine_id
      @routine = current_user.routines.find_by(id: routine_id)
      redirect_to routine_exercise_path(@routine, @exercise)
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
    params.require(:exercise).permit(:id, :name, :exercise_type, :description, :routine_exercises_attributes => [:id, :routine_id, :sets, :reps])
  end

  def set_exercise
    @exercise = Exercise.find_by(id: params[:id])
  end

  def set_routine
    @routine = current_user.routines.find_by(id: params[:routine_id])
  end

  def set_routine_exercise
    @routine_exercise = RoutineExercise.find_by(routine_id: params[:routine_id], exercise_id: params[:id])
  end
end
