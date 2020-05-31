class RoutinesController < ApplicationController
  def new
    @routine = Routine.new
  end

  def index
    if user_signed_in?
      @routines = Routine.all
    else
      redirect_to welcome_page_path
    end
  end

  def create
    @routine = Routine.new(routine_params)
    if @routine.valid?
      @routine.save
      redirect_to routines_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def delete
  end

  private
  def routine_params
    params.require(:routine).permit(
      :name,
      :times_per_week,
      :exercise_ids[],
      :exercises_routine_exercises_sets[],
      :exercises_routine_exercises_reps[]
    )
  end
end
