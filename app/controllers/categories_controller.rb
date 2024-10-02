class CategoriesController < ApplicationController
  def index
    render json: {name: "hello"}
  end

  def show
    render json: {name: "goodbye"}
  end

  def create
    render json: {name: "billy"}
  end

  def update
    render json: {name: "sports"}
  end
  
  def destroy
    render json: {name: "pop"}
  end
end
