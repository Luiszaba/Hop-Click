# frozen_string_literal: true

require 'pry'

# controller for Objectives
class ObjectivesController < ApplicationController
  before_action :set_objective, only: [:show, :edit, :update, :destroy]

  def index
    @objectives = Objective.all.order('created_at DESC')
  end

    # show serialization
  def show
    @objective = Objective.find(params[:id])
    render json: @objective.to_json(only: [:id, :name, :description, :due_date, :completed], 
      include: [user: { only: [:id, :name, :email] }] )
  end

  def edit; end

  def new
    @objective = Objective.new
  end

  def create
    if params.nil?
      render :objectives
    else
      @objective = Objective.new(objective_params)
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

  def completed
    @objective.update(completed: true)
    @objective.delete
    redirect_to objectives_path
  end

  def destroy
    @objective.destroy
    respond_to do |format|
      format.html {redirect_to objectives_url, notice: 'Objective was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  def set_objective
    @objective = Objective.find(params[:id])
  end

  def objective_params
    params.require(:objective).permit(:name, :description, :group_id, :completed,
    :due_date, :user_id)
  end
end