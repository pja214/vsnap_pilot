class InteractionsController < ApplicationController
  before_action :set_interaction, only: [:show, :edit, :update, :destroy]
  before_action :set_week
  before_action :set_employee


  def new
    @interaction = Interaction.new(week_id: @week.id)
  end

  def edit
  end

  def create
    @interaction = Interaction.new(week_id: @week.id, \
      pilot_metric: params[:interaction][:pilot_metric], \
      recipient: params[:interaction][:recipient], \
      viewed: params[:interaction][:viewed], \
      response_sentiment: params[:interaction][:response_sentiment], \
      response_other: params[:interaction][:response_other], \
      url: params[:interaction][:url], \
      comments: params[:interaction][:comments])

    if @interaction.save
      redirect_to @employee, notice: 'Interaction was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @interaction.update(pilot_metric: params[:interaction][:pilot_metric], \
      recipient: params[:interaction][:recipient], \
      viewed: params[:interaction][:viewed], \
      response_sentiment: params[:interaction][:response_sentiment], \
      response_other: params[:interaction][:response_other], \
      url: params[:interaction][:url], \
      comments: params[:interaction][:comments])

      redirect_to @employee, notice: 'Interaction was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @interaction.destroy
    redirect_to employee_path(@employee)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interaction
      @interaction = Interaction.find(params[:id])
    end

    def set_week
      if params[:week_id] == nil
        @week = Week.find(@interaction.week_id)
      else
        @week = Week.find(params[:week_id])
      end
    end

    def set_employee
      @employee = Employee.find(@week.employee_id)
    end
end
