class EmployeesController < ApplicationController

  def index 
    @employees = Employee.all
  end 

  def show
    @employee = Employee.find(params[:id])
  end 

  def new
    flash
    @employee = Employee.new
  end

  def create 
    employee_params = params.require(:employee).permit(:first_name, :last_name, :alias, :office, :dog_id, :img_url, :title)
    @employee = Employee.create(employee_params)

    if @employee.valid?
      redirect_to employee_path(@employee)
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to new_employee_path
    end
  end 

end

