class ObjectivesController < ApplicationController
  before_action :set_objective, only: [:show, :edit,:create, :update, :destroy]
  # before_action only; [:edit, :update, :destroy] => permits visitor to view show page
  skip_before_action :authenticate_user!, only: [:show]

  # GET /objectives
  # GET /objectives.json
  def index
    @objectives = Objective.all
  end

  # GET /objectives/1
  # GET /objectives/1.json
  def show
  end

  # GET /objectives/new
  def new
    @objective = current_user.objectives.build(objective_params)
  end

  # GET /objectives/1/edit
  def edit
    @groups = current_user.groups
  end
end

# POST /objectives
# POST /objectives.json

def create
  @objective = current_user.objectives.build(objective_params)

  respond_to do |format|
    if @objective.save
      format.html {redirect_to @objective, notice: 'Objective was successfully created.'}
      format.json {render :show, status: :created, location: @objective}
    else
      format.html {render :new}
      format.json {render json: @objective.errors, status: :unprocessable_entity}
    end
  end
end

# PATCH/PUT /objectives/1
# PATCH/PUT /objectives/1.json
def update
  respond_to do |format|
    if @objective.update(objective_params)
      format.html {redirect_to @objective, notice: 'Objective was successfully updated.'}
      format.json {render :show, status: :ok, location: @objective}
    else
      format.html {render :edit}
      format.json {render json: @objective.errors, status: :unprocessable_entity}
    end
  end
end

# DELETE /objectives/1
# DELETE /objectives/1.json
def destroy
  if @objective.user == current_user
  @objective.destroy
  respond_to do |format|
    format.html {redirect_to objectives_url, notice: 'Objective was successfully destroyed.'}
    format.json {head :no_content}
  end
end

private

# Use callbacks to share common setup or constraints between actions.

  def set_objective
  @objective = Objective.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.

  def objective_params
  params.require(:objective).permit(:name, :description, :group_id, :completed)
  end
end


