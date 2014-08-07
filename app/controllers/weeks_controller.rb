class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]
  before_action :set_employee

  def create
    number = Week.where(employee_id: @employee.id).count + 1
    week = Week.new(employee_id: @employee.id, number: number)
    if week.save
      redirect_to @employee, notice: "Added week #{number}."
    else
      redirect_to @employee, alert: "There was an error adding a new week."
    end
  end

  def destroy
    @week.destroy
    redirect_to @employee
  end

  def update
    if @week.update(comments: params[:week][:comments])
      redirect_to @employee, notice: "Week #{@week.number}'s comment updated."
    else
      render 'edit'
    end
  end

  private

    def set_week
      @week = Week.find(params[:id])
    end

    def set_employee
      if params[:employee_id] == nil
        @employee = Employee.find(@week.employee_id)
      else
        @employee = Employee.find(params[:employee_id])
      end
    end

end
