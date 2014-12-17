class UserStoriesController < ApplicationController
  def new
    @user_story = UserStory.new
  end

  def show
    @provider = find_user_story
  end

  def create
    @project = set_project
    @user_story = @project.user_stories.create!(user_story_params)
    redirect_to @project
  end

  private
  def set_project
    @project = Project.find(params[:project_id])
  end

  def find_user_story
    @user_story = UserStory.find(params[:id])
  end

  def user_story_params
    params.require(:user_story).permit(:actor, :narrative, :goal, :project_id)
  end
end
