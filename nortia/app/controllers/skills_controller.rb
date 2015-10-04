class SkillsController < ApplicationController
  def show
  end

  def index
    @users = User.all
    # @skill = get_skill
    skills_maincats = Skill::MAINCATS
    @skills_hash = {}
    skills_maincats.each do |maincat|
      @skills_hash[maincat] = Skill.where(:maincat => maincat).map do |skill|
        skill.user
      end
    end
    # get uniq list of all skill maincat's
    # for each maincat, query for users who have skill matching cat
    # build hash that looks like this:
    # {
    #   "babysitting" => nil,
    #   "rockclimbing" => nil,
    #   ...
    # }
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
    if @skill.update!(skill_params)
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
