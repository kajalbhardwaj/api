class EmployeesController < ApplicationController
   before_action :find_employee, only: [:show, :update, :destroy]
  def index
   @employees = Employee.all
   render json: @employees, only: [:name, :employee_id]
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
    render json: @employee
   end 
 
 private
  def employee_params
   params.require(:employees).permit(:name, :employee_id)
  end
  def find_employee
   @employee = Employee.find(params[:id])
  end
end  
