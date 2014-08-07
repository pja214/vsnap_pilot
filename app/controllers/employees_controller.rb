class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  before_action :set_company


  def show
    @weeks = @employee.weeks.all
    @interactions = Hash.new
    @interaction_count = 0
    @response_sentiment_count = 0
    @response_other_count = 0
    @pilot_metric_count = 0
    @weeks.each do |week|
      @interactions[week] = week.interactions
      @interaction_count = @interaction_count + week.interactions.where.not(recipient: nil).count
      @response_sentiment_count = @response_sentiment_count + week.interactions.where(response_sentiment: true).count
      @response_other_count = @response_other_count + week.interactions.where(response_other: true).count
      @pilot_metric_count = @pilot_metric_count + week.interactions.where(pilot_metric: true).count
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
      week = Week.create(number: 1, employee_id: @employee.id)
      Interaction.create(week_id: week.id, comments: "Vsnap 1: Happy Birthday")
      Interaction.create(week_id: week.id, comments: "Vsnap 2: Thank a Colleague")
      Interaction.create(week_id: week.id, comments: "Vsnap 3: LinkedIn Update")
      Interaction.create(week_id: week.id, comments: "Vsnap 4: Thank a Customer")
      Interaction.create(week_id: week.id, comments: "Vsnap 5: Check in with a Customer")
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
    redirect_to company_url(@company)
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
