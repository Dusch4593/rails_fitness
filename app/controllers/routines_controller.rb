class RoutinesController < ApplicationController
  helper_method :params
  before_action :authenticate_user!, :set_routine, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in?
      @routines = current_user.routines
    else
      redirect_to welcome_page_path
    end
  end

  def new
    @routine = current_user.routines.build
    @exercise = @routine.exercises.build
    @routine_exercise = @exercise.routine_exercises.build
  end

  def create
    @routine = current_user.routines.build(routine_params)
    if @routine.save && !routine_params["exercise_ids"].empty?

      # If existing exercises were checked, loop through the ids and update routine_exercise object
      routine_params["exercise_ids"].each do |i|
        next if i.empty?
        @exercise = Exercise.find_by(id: i)
        @routine.routine_exercises.find_by(exercise_id: @exercise.id).update(sets: 0, reps: 0)
      end

      # Updates the existing routine_exercise object already linked with @routine and newly created exercise
      @routine.routine_exercises.last.update(sets: routine_params[:exercises_attributes][:routine_exercises_attributes][:sets])
      @routine.routine_exercises.last.update(reps: routine_params[:exercises_attributes][:routine_exercises_attributes][:reps])
      redirect_to routines_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @routine.update(routine_params)
      routine_params["exercise_ids"].each do |i|
        next if i.empty?
        @exercise = Exercise.find_by(id: i)
        @routine.routine_exercises.find_by(exercise_id: @exercise.id).update(sets: 0, reps: 0)
      end
      redirect_to routine_path(@routine)
    else
      render :edit
    end
  end

  def destroy
    @routine.destroy
    redirect_to routines_path
  end

  private
  def routine_params
    params.require(:routine).permit(
      :name,
      :times_per_week,
      exercise_ids:[],
      exercises_attributes: [
        :id,
        :name,
        :exercise_type,
        :description,
        routine_exercises_attributes: [:id, :sets, :reps]
      ]
    )
  end

  def set_routine
    @routine = Routine.find_by(id: params[:id])
  end
end
