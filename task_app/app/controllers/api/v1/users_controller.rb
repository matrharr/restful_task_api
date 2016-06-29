module Api
  module V1
    class UsersController < ApplicationController


      def create
        @user = User.from_omniauth(request.env['omniauth.auth'])
        if @user.save
          p "*" * 80
          render json: @user
        else
          p "no" * 80
          render json: @user.errors
        end
      end

    end
  end
end