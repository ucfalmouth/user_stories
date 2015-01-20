class ProjectsController < ApplicationController

  def index
    @project = Project.all
  end
  def show
    @user_story = UserStory.new
    @project = find_project
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.save
      redirect_to @project
    else
      redirect to root_path
    end
  end

  def destroy
    @project = find_project
    @project.destroy
    redirect_to root_url
  end

  def edit
    @project = find_project
  end

  def update
    @provider = find_project
      if @project.update_attributes(project_params)
        redirect_to @project
      else
        redirect_to @project
      end 
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
