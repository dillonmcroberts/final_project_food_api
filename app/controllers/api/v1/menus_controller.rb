module Api
  module V1

    class MenusController < ApplicationController

      before_action :find_menu, only: [:show, :edit, :destroy, :update]

      def index
        render json: Menu.all
      end

      def show
        render json: Menu.find(params[:id])
      end

      def create
        menu = Menu.new(menu_params)
        if menu.save
          render json: menu
        else
          render json: {status: 500, err: 'Menu could not be found'}
        end
      end

      def update
        menu = Menu.find(params[:id])
        if menu.update(menu_params)
          render json: menu
        else
          render json: {status: 500, err: 'Menu could not be updated'}
        end
      end

      def destroy
        menu = Menu.find(params[:id])
        if menu
          menu.destroy
          head :ok
        else
          render json: {status: 400, err: "menu with id of #{params[:id]} not found"}
        end
      end

      private

      def menu_params
        params.require(:menu).permit(:text)
      end

    end

end

end
