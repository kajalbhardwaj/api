class EmployeesController < ApplicationController
  def index
   @employees = Employee.all
   render json: @employees
  end
   
   def show
      render json: @employee
   end
   
   def create
    @employee = Employee.create(employee_params)
    if @employee.save
    render json: @employee
    else 
      render json: @employee
    end
   end 
   
   def update
     if @employee.update(employee_params)
      render json: @employee
     else
      render json: @employee
     end
   end 
   
   def destroy
    @employee.destroy
    render json: @employee
   end 
 
 private
  def employee_params
   params.require(:employee).permit(:name, :employee_id)
  end
  def find_employee
   @employee = Employee.find(params[:id])
  end
end  