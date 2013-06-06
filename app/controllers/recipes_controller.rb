class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end
  def create
    recipe = Recipe.new(params[:recipe])

    if recipe.save!
      redirect_to recipes_path
    else
      redirect_to new_recipe_path
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end
  def update
    recipe = Recipe.find(params[:id])

    if recipe.update_attributes(params[:recipe])
      redirect_to recipes_path
    else
      redirect_to edit_recipe_path
    end
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to recipes_path
  end

end