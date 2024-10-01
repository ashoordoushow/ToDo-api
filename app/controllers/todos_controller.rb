class TodosController < ApplicationController


  def index
    render json: {message: "todo index"}
  end

  def show
    render json: {message: "todo show"}
  end

  def create
    render json: {message: "todo create"}
  end

  def update
    render json: {message: "todo update"}
  end

  def destroy
    render json: {message: "todo destroy"}
  end


end
