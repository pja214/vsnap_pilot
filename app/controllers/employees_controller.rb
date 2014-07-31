class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  before_action :set_company


  def show
    @weeks = @employee.weeks.all
    @interactions = Hash.new
    @weeks.each do |week|
      @interactions[week] = week.interactions
    end
  end

  def new
    @employee = @company.employees.new
  end

  def edit
  end

  def create
    @employee = Employee.new(company_id: @company.id, name: params[:employee][:name])
    if @employee.save
      # Week.create(number: 1, employee_id: @employee.id)
      # Interaction.create(week_id: 1, task: "Happy Birthday")
      # Interaction.create(week_id: 1, task: "Thank a Colleague")
      # Interaction.create(week_id: 1, task: "LinkedIn Update")
      # Interaction.create(week_id: 1, task: "Thank a Customer")
      # Interaction.create(week_id: 1, task: "Check in with a Customer")
      redirect_to @employee, notice: 'Employee was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @employee.update(name: params[:employee][:name])
      redirect_to @employee, notice: 'Employee was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_url
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    def set_company
      if params[:company_id] == nil
        @company = Company.find(@employee.company_id)
      else
        @company = Company.find(params[:company_id])
      end
    end
end
