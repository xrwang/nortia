class SkillsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = current_user.skills.create(skill_params)
    redirect_to show_profile_path
  end

  def edit
    @skill = get_skill
  end

  def update
    @skill = get_skill
    if current_user.skills.update!(skill_params)
      redirect_to show_profile_path
    else
      render 'edit'
    end
  end

  def destroy
  end

private
def skill_params
  params.require(:skill).permit(:maincat, :subcat, :experience)
end

def get_skill
  Skill.find(params[:id])
end

end
