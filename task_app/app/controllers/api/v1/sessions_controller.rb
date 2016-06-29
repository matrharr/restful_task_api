module Api
  module V1

    class SessionsController < ApplicationController

      # def show
      #   @user = User.last
      #   render json: @user
      # end

      def create
        p request.env['omniauth.auth']
        @user = User.from_omniauth(request.env['omniauth.auth'])
        p @user
        if @user.save
          render json: @user
        else
          render text: "User could not save"
        end

      end

      def destroy
        session[:user_id] = nil
        render text: "Session deleted"
      end

    end

  end
end