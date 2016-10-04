module Api
  module V1
    class UsersController < ApplicationController
      before_action :find_user, only: [:show, :edit, :destroy, :update]

      def index
        render json: User.all.includes(:recipes,:menus), include: ['recipes','menus']
      end

      def show
        render json: User.find(params[:id]), include: ['recipes','menus']
      end

      def create
        user = User.new(user_params)
        if user.save
          render json: user
        else
          render json: {status: 500, err: 'User could not be found'}
        end
      end

      def update
        user = User.find(params[:id])
        if user.update(user_params)
          render json: user
        else
          render json: {status: 500, err: 'User could not be updated'}
        end
      end

      def destroy
        user = User.find(params[:id])
        if user
          user.destroy
          head :ok
        else
          render json: {status: 400, err: "user with id of #{params[:id]} not found"}
        end
      end


      private

      def find_user
        @user = User.find(params[:id])
      end
        def user_params
          params.require(:user).permit(:name, :password, :email)
        end
    end
  end
end
