class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  
  def index
    # Show all departments
    departments = Department.all

    render component: "Departments", props: { departments: departments }
  end

  def show
    # Show an individual department
    render component: "Department", props: { department: @department }
  end

  def new
    # Send us to new department form
    render component: "NewDepartment"
  end

  def create
    # Add new department to database
  end

  def edit
    # Send us to edit department form
  end

  def update
    # update to database
  end

  def destroy
    # delete an individual department
  end

  # Set section to only be seen locally
  private

  # Define department by id once to be called multiple times
  def set_department
    @department = Department.find(params[:id])
  end


end
