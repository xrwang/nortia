class SessionsController < ApplicationController
  def create
  user = User.from_omniauth(env["omniauth.auth"])
  session[:user_id] = user.id
  # user = User.where(:provider => auth['provider'],
  #                 :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
  redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
