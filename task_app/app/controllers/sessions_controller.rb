# module Api
#   module V1

    class SessionsController < ApplicationController


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

      def destroy
        session[:user_id] = nil
        render text: "Session deleted"
      end

    end

#   end
# end