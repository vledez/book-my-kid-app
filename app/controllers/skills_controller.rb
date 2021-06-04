class SkillsController < ApplicationController
  def create
    @kid = Kid.find(params[:kid_id])
    @skill = Skill.new(skill_params)
    @skill.kid = @kid
    if @skill.save
      redirect_to kid_path(@kid)
    else
      render 'kids/show'
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:content)
  end
end
