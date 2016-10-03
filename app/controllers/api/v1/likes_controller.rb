module Api
  module V1

    class LikesController < ApplicationController

      before_action find_like :show, :edit, :destroy, :update

      def index
        render json: Like.all
      end

      def show
        render json: Like.find(params[:id])
      end

      def create
        like = Like.new(like_params)
        if like.save
          render json: like
        else
          render json: {status: 500, err: 'Like could not be found'}
        end
      end

      def update
        like = Like.find(params[:id])
        if like.update(like_params)
          render json: like
        else
          render json: {status: 500, err: 'Like could not be updated'}
        end
      end

      def destroy
        like = Like.find(params[:id])
        if like
          like.destroy
          head :ok
        else
          render json: {status: 400, err: "like with id of #{params[:id]} not found"}
        end
      end

      private

      def like_params
        params.require(:like).permit(:text)
      end

    end

end

end
