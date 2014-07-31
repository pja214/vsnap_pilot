class InteractionsController < ApplicationController
  before_action :set_interaction, only: [:show, :edit, :update, :destroy]

  # GET /interactions
  # GET /interactions.json
  def index
    @interactions = Interaction.all
  end

  # GET /interactions/1
  # GET /interactions/1.json
  def show
  end

  # GET /interactions/new
  def new
    @interaction = Interaction.new
  end

  # GET /interactions/1/edit
  def edit
    @employee = Employee.find_by(id: Interaction.find_by(id: params[:id]).employee_id)
  end

  # POST /interactions
  # POST /interactions.json
  def create
    @employee = Employee.find_by(id: params[:employee_id])
    @interaction = Interaction.new(employee_id: params[:employee_id], task: \
      params[:interaction][:task], complete: params[:interaction][:complete], \
      response: params[:interaction][:response], url: params[:interaction][:url], \
      comments: params[:interaction][:comments])

    respond_to do |format|
      if @interaction.save
        format.html { redirect_to @employee, notice: 'Interaction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @interaction }
      else
        format.html { render action: 'new' }
        format.json { render json: @interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interactions/1
  # PATCH/PUT /interactions/1.json
  def update
    @employee = Employee.find_by(id: @interaction.employee_id)
    respond_to do |format|

      if @interaction.update(task: params[:interaction][:task], \
        complete: params[:interaction][:complete], \
        response: params[:interaction][:response], \
        url: params[:interaction][:url], \
        comments: params[:interaction][:comments])

        format.html { redirect_to @employee, notice: 'Interaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @interaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interactions/1
  # DELETE /interactions/1.json
  def destroy
    employee_id = Interaction.find_by(id: params[:id]).employee_id
    @interaction.destroy
    respond_to do |format|
      format.html { redirect_to employee_path(employee_id) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interaction
      @interaction = Interaction.find(params[:id])
    end
end
