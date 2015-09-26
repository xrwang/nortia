class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def update
    Rails.logger.debug user_params
    if current_user.update!(user_params)
      redirect_to show_profile_path
    else
      render 'edit'
    end

  end


  def show

  end


  private
    def user_params
      params.require(:user).permit(:name, :zipcode, :username, :email, :age)
    end
end
