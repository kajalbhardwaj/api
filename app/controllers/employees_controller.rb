class EmployeesController < ApplicationController
   before_action :find_employee, only: [:show, :update, :destroy]
  def index
   @employees = Employee.all
   render json: @employees, only: [:name, :employee_id, :surname, :profile, :department]
   end

   
   def show

    #@employee = Employee.find(params[:id])
      render json: @employee
   end
   
   def create
    @employee = Employee.new(employee_params)
    @employee.save
    render json: @employee, status: :created, location: @employee
   end 
   
   def update
      @employee.update(employee_params)
      render json: @employee
    
   end 
   
   def destroy
    @employee.destroy
   end 
 
 private
  def employee_params
   params.require(:employee).permit(:name, :employee_id, :surname, :profile, :department)
  end
  def find_employee
   @employee = Employee.find(params[:id])
  end
end  
