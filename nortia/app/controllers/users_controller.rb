class UsersController < ApplicationController
  def index
  end

  def new
  end


  def update
    Rails.logger.debug
    if current_user.update!(user_params)
      redirect_to show_profile_path
    else
      render 'edit'
    end

  end


  def show
    @skills = current_user.skills
    @vibes = current_user.vibes
  end


  private
    def user_params
      params.require(:user).permit(:name, :zipcode, :location_long, :username, {:availability => []}, :email, :age, :image_url)
    end

    def get_skill
      Skill.find(params[:id])
    end
end
