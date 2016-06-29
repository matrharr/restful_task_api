module Api
  module V1
    class UsersController < ApplicationController


      def create_fb
        @user = User.from_omniauth(request.env['omniauth.auth'])
        if @user.save
          p "*" * 80
          render json: @user
        else
          p "no" * 80
          render json: @user.errors
        end
      end


      def create
        @user =

      end

      private
        def user_params
          params.require(:user).permit(:name, :email)

        end

    end
  end
end