class ProjectsController < ApplicationController

  def show
    @user_story = UserStory.new
    @project = find_project
  end

  def new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def set_department
    @department = Department.find(params[:department_id])
  end

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :goal, :department_id)
  end
end
