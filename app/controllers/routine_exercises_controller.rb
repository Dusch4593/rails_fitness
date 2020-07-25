class RoutineExercisesController < ApplicationController
  def destroy
    binding.pry
    @routine_exercise = RoutineExercise.find_by(routine_id: params[:routine_id], exercise_id: params[:id])
    @routine_exercise.destroy
    redirect_to routine_path(current_user.routines.find_by(id: params[:routine_id]))
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
end
