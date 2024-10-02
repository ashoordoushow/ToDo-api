class TodosController < ApplicationController


  def index
    @todos = Todo.all
    render :index
  end

  def show
    @todo = Todo.find_by(id: params[:id])
    render :show
  end

  def parse_date(date_string)
    Date.strptime(date_string, '%Y-%m-%d') 
  end

  def create
 
    @todo = Todo.new(
      user_id: params[:user_id],
      category_id: params[:category_id],
      title: params[:title],
      description: params[:description],
      deadline: parse_date(params[:deadline]),
      completed: params[:completed]
    )
    if @todo.save
      render :show
    else
      #error handling
      render json: { errors: @todo.errors.full_messages}, 
      status: :unprocessable_entity
    end
  end

  def update
    @todo = Todo.find_by(id: params[:id])

    @todo.update(
      user_id: params[:user_id] || @todo.user_id,
      category_id: params[:category_id] || @todo.category_id,
      title: params[:title] || @todo.title,
      description: params[:description] || @todo.description,
      deadline: parse_date(params[:deadline]) || @todo.deadline,
      completed: params[:completed] || @todo.completed
    )
    @todo.save!
    render :show
  end

  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy
    render json: { message: "todo has been removed" }
  end


end
