class RoutinesController < ApplicationController
  before_action :authenticate_user!
  def new
    @routine = current_user.routines.build
  end

  def index
    if user_signed_in?
      @routines = Routine.all
    else
      redirect_to welcome_page_path
    end
  end

  def create
    @routine = current_user.routines.build(routine_params)
    if @routine.save
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
    params.require(:routine).permit(:name, :times_per_week, exercise_ids:[], exercises_attributes:[:name, :exercise_type, :description])
  end
end
