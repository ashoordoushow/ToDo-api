class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render :index
  end

  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end

  def create
    @category = Category.create(
      name: params[:name]
    )
    render :show
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.update(
      name: params[:name] || @name.name
    )
    render :show
  end
  
  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    render json: { message: "Photo destroyed successfully" }
  end
end
