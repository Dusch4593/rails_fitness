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
    #binding.pry
    if @routine.save
      routine_params["exercise_ids"].delete_at(0)
      routine_params["exercise_ids"].each do |i|
        exercise = Exercise.find_by(id: i)
        next if i.empty?
        @routine.routine_exercises.create(exercise_id: exercise.id, sets: 0, reps: 0)
      end
      redirect_to routines_path
    else
      render :new
    end
  end

  def show
    @routine = Routine.find_by(id: params[:id])
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
      exercise_ids:[],
      exercises_attributes: [:name, :exercise_type, :description]
      #routine_exercises_attributes:[:sets, :reps]
    )
  end
end
