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
    # start by adding department to local memory 
    department = Department.new(department_params)
    # if able to save (params.require satisfied), i.e., able to push to DB, then redirect to index of departments
    if(department.save)
      redirect_to departments_path
    else
      # TODO: generate errors 
    end
    # Add new department to database
  end

  def edit
    # Send us to edit department form
    render component: "EditDepartment", props: { department: @department }
  end

  def update
    # if edits match required parameters and able to push changes to database then redirect to index of departments
    if(@department.update(department_params))
      redirect_to departments_path
    else
      # TODO: generate errors
    end
   end


  def destroy
    # delete an individual department
    @department.destroy
    # redirect back to index (nothing to view here - You just deleted it you jerk!)
    redirect_to departments_path
  end

  # Set section to only be seen locally
  private

  # Define department by id once to be called multiple times
  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name)
  end

end
