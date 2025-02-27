class CategoriesController < ApplicationController
  def index
    @category = Category.new
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save!
      redirect_to new_post_path
    else
      @categories = Category.all
      render 'index'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
