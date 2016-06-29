module Api
  module V1
    class UsersController < ApplicationController


      def create_fb
        @user = User.from_omniauth(request.env['omniauth.auth'])
        if @user.save
          p "*" * 80
          render json: @user, status: 201
        else
          p "no" * 80
          render json: {errors:@user.errors}, status: 422
        end
      end


      def create
        p user_params
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: 201
        else
          render json: {errors:@user.errors}, status: 422
        end
      end


      private
        def user_params
          params.require(:user).permit(:name, :email)
        end

    end
  end
end