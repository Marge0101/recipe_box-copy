class RecipesController < ApplicationController
  
  before_action :find_recipe,only:[:show, :edit, :update, :destroy]
  
  def index
    @recipe = Recipe.all.order("created_at DESC")
  end

  def show

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    
    if @recipe.save
      flash[:sucsess] = 'recipe created'
      redirect_to @recipe
    else
      render:new
    end
  end
  
  def edit

  end
  
  def update
  
     
     if @recipe.update(recipe_params)
      flash[:sucsess] = 'recipe updated'
      redirect_to @recipe
    else
      render:edit
     end
  end
  
  def destroy
    
     @recipe.destroy
     flash[:sucsess] = 'recipe destroy'
     redirect_to root_path
  end
  
  private
  
  def recipe_params
    params.require(:recipe).permit(:title,:description,:picture,:picture_cache)
  end
  
  def find_recipe
   @recipe = Recipe.find(params[:id])
  end
  
end
