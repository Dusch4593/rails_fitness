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
end
