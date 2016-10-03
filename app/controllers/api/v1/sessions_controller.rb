module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate

      def index
      end

      def new
      end

      def show
        render json: {message: "Hello Khaleda and Silvana"}
      end

      def create
        user = User.find_by(email: params[:email])
        if user.authenticate(params[:password])
          jwt = Auth.issue({user: user.id})
          render json: {jwt: jwt}
        end

      end

      def hello
        render json: {message: "Hello"}
      end

      private
        def auth_params
          params.require(:auth).permit(:email, :password)
        end

    end
  end
end
