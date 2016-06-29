module Api
  module V1

    class SessionsController < ApplicationController

      # def show
      #   @user = User.last
      #   render json: @user
      # end

      def create

        @user = User.from_omniauth(request.env['omniauth.auth'])

        if @user.save
          render json: @user
        else
          render json: @user.errors
        end

      end

      def destroy
        session[:user_id] = nil
        render text: "Session deleted"
      end

    end

  end
end