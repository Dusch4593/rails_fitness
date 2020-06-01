class WelcomeController < ApplicationController
  def home
    redirect_to routines_path if user_signed_in?
  end
end
