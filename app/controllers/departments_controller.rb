class DepartmentsController < ApplicationController

  def index
    @departments = Department.all
  end

  def show
    @department = find_department
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.create(department_params)
    if @department.save
      redirect_to departments_path
    else
      render :new
    end
  end

  def edit
    @department = find_department
  end

  def update
    @department = find_department
    if @department.update_attributes(department_params)
      redirect_to @department
    else
      redirect_to @department
    end
  end

  def destroy

  end

  private

  def find_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name)
  end
end
