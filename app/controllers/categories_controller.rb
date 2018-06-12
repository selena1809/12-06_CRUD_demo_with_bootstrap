class CategoriesController < ApplicationController
  before_action :set_category, only: [:show,:edit,:destroy, :update]
  def index
    @categories = Category.all
  end
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end

def edit
  
end
  def update
    if @category.update(category_params)
      redirect_to @category

    else
      render 'edit'

    end
  end

def destroy
  @category.destroy

  redirect_to categories_path
end
  def set_category
    @category = Category.find(params[:id])
  end
  private
  def category_params
    params.require(:category).permit(:name, :price, :description, :code)
  end
end
