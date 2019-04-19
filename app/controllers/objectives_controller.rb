class ObjectivesController < ApplicationController
  before_action :set_objective, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    @objectives = Objective.all
  end

  def show; end

  def new
    @objective = Objective.new
    @groups = Group.where('id = ?', current_user.group_id)
  end


  def edit; end

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


  def destroy
    if @objective.user == current_user
      @objective.destroy
      respond_to do |format|
        format.html {redirect_to objectives_url, notice: 'Objective was successfully destroyed.'}
        format.json {head :no_content}
      end
    end
  end

  private


  def set_objective
    @objective = Objective.find(params[:id])
  end

  def objective_params
    params.require(:objective).permit(:name, :description, :group_id)
  end
end



