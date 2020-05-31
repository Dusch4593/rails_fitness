class RoutinesController < ApplicationController
  def new
  end

  def index
    if user_signed_in?
      @routines = Routine.all
    else
      redirect_to welcome_page_path
    end
  end

  def create

  end

  def show
  end

  def edit
  end

  def delete
  end

  private
  def routine_params
    
  end
end
