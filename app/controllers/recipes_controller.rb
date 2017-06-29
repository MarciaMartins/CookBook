class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
      @recipe = Recipe.new(recipe_params)
    # @recipe.title = params[:recipe][:title]
    # @recipe.recipe_type = params[:recipe][:recipe_type]
    # @recipe.cuisine = params[:recipe][:cuisine]
    # @recipe.difficulty= params[:recipe][:difficulty]
    # @recipe.cook_time= params[:recipe][:cook_time]
    # @recipe.ingredients= params[:recipe][:ingredients]
    # @recipe.method= params[:recipe][:method]
    @recipe.save
    redirect_to recipe_url(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,
                          :recipe_type,:cuisine,:difficulty,:cook_time,:ingredients, :method)
  end


end
