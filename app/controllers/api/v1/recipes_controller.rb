module Api
  module V1

    class RecipesController < ApplicationController

      before_action :find_recipe, only: [:show, :edit, :destroy, :update]

      def index
        render json: Recipe.all
      end

      def show
        render json: Recipe.find(params[:id])
      end

      def create
        recipe = Recipe.new(recipe_params)
        if recipe.save
          render json: recipe
        else
          render json: {status: 500, err: 'Recipe could not be found'}
        end
      end

      def update
        recipe = Recipe.find(params[:id])
        if recipe.update(recipe_params)
          render json: recipe
        else
          render json: {status: 500, err: 'Recipe could not be updated'}
        end
      end

      def destroy
        recipe = Recipe.find(params[:id])
        if recipe
          recipe.destroy
          head :ok
        else
          render json: {status: 400, err: "recipe with id of #{params[:id]} not found"}
        end
      end

      private

      def recipe_params
        params.require(:recipe).permit(:text)
      end

    end

end

end
