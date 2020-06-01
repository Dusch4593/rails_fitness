class CallbacksController < ApplicationController
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    #binding.pry
    if @user.persisted?
      sign_in_and_redirect @user
    else
      # binding.pry
      flash[:error] = "There was a problem signing you in through Facebook. Please register or try signing in later."
      redirect_to new_user_registration_url
    end
  end

  def google_oauth2
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user
    else
      flash[:error] = "There was a problem signing you in through Google. Please register or try signing in later."
      redirect_to new_user_registration_url
    end
  end

  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, to: "welcome_page"
    else
      flash[:error] = "There was a problem signing you in through GitHub. Please register or try signing in later."
      redirect_to new_user_registration_url
    end
  end

  def failure
    flash[:error] = "There was a problem signing you in. Please try again later."
    redirect_to new_user_registration_url
  end
end
