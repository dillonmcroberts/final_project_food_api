module Api
  module V1

    class CommentsController < ApplicationController

      before_action find_comment :show, :edit, :destroy, :update

      def index
        render json: Comment.all
      end

      def show
        render json: Comment.find(params[:id])
      end

      def create
        comment = Comment.new(comment_params)
        if comment.save
          render json: comment
        else
          render json: {status: 500, err: 'Comment could not be found'}
        end
      end

      def update
        comment = Comment.find(params[:id])
        if comment.update(comment_params)
          render json: comment
        else
          render json: {status: 500, err: 'Comment could not be updated'}
        end
      end

      def destroy
        comment = Comment.find(params[:id])
        if comment
          comment.destroy
          head :ok
        else
          render json: {status: 400, err: "comment with id of #{params[:id]} not found"}
        end
      end

      private

      def comment_params
        params.require(:comment).permit(:text)
      end

    end

end

end
