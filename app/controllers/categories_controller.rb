class CategoriesController < ApplicationController

  def index 
    @categories = Category.all
  end

  def show 
    @category = Category.find(params[:id])
  end 

  def new 
    @category = Category.new
  end 
  
  def create 
    @category = Category.create(category_params) 
    render :show 
  end

  def edit
  @category = Category.find(params[:id]) 
  end 
    
  def update 
    @category = Category.find(params[:id])
    @category.update_attributes(category_params) 
    render :show
  end

  def destroy 
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to action: :index
  end 

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
