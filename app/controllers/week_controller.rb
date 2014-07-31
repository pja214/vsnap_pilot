class WeekController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]
  before_action :set_employee

  def create
    number = Week.where(employee_id: employee_id).count + 1
    week = Week.new(employee_id: employee_id, number: number)
    if week.save
      redirect_to @employee, notice: "Added week #{number}."
    end
  end

  def destroy
    @week.destroy
    redirect_to @employee
  end

  def update
  end

  private

    def set_interaction
      @interaction = Interaction.find(params[:id])
    end

    def set_employee
      if params[:employee_id] == nil
        @employee = Employee.find(@interaction.employee_id)
      else
        @employee = params[:employee_id]
      end
    end

end
