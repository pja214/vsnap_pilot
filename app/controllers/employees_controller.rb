class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    @employee = Employee.find_by(id: params[:id])
    @company = Company.find_by(id: @employee.company_id)
    @interactions = @employee.interactions
  end

  # GET /employees/new
  def new
    @company = Company.find_by(id: params[:company_id])
    @employee = @company.employees.new(name: params[:name])
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find_by(id: params[:id])
    @company = Company.find_by(id: @employee.company_id)
  end

  # POST /employees
  # POST /employees.json
  def create
    @company = Company.find_by(id: params[:company_id])
    @employee = Employee.new(company_id: @company.id, name: params[:employee][:name])

    respond_to do |format|
      if @employee.save
        Interaction.create(employee_id: @employee.id, week: 1, task: "Happy Birthday")
        Interaction.create(employee_id: @employee.id, week: 1, task: "Thank a Colleague")
        Interaction.create(employee_id: @employee.id, week: 1, task: "LinkedIn Update")
        Interaction.create(employee_id: @employee.id, week: 1, task: "Thank a Customer")
        Interaction.create(employee_id: @employee.id, week: 1, task: "Check in with a Customer")
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render action: 'show', status: :created, location: @employee }
      else
        format.html { render action: 'new' }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(name: params[:employee][:name])
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

end
