class UsersController < ApplicationController
  def index
    render json: {name: "hello"}
  end

  def show
    render json: {name: "bye"}
  end

  def update
    render json: {name: "bob"}
  end

  def destroy
    render json: {name: "ball"}
  end

  def create
    render json: {name: "joe"}
  end
end
