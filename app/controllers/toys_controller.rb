class ToysController < ApplicationController
  before_action :find_toy, only: [:update, :destroy, :edit, :show]
  def index
    @toys = Toy.all
  end
  
  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.create(toy_params)
    redirect_to toy_path(@toy.id)
  end

  def edit
  end


  def update
    @toy.update(toy_params)
    redirect_to @toy
  end

  def show
  end

  def destroy
    @toy.destroy
    redirect_to toys_url
  end

  private 

  def toy_params
    params.require(:toy).permit(:name, :description, :date_posted, :posted_by)
  end

  def find_toy
    @toy = Toy.find(params[:id])
  end
end
