require_relative '../../../helpers/application_helper'
module Api
  module V1
    class UsersController < ApplicationController

      include ApplicationHelper
      def index
        @users = User.all
        render json: @users
      end

      def via_facebook_token
        #grab authenticated user access token
        access_token = params['access-token']

        # make request to facebook api
        uri = URI("https://graph.facebook.com/v2.6/me?access_token=#{access_token}&fields=name%2Cemail%2Cid&format=json&method=get&pretty=0&suppress_http_code=1")

        user_json = Net::HTTP.get_response(uri).body

        hash = JSON.parse(user_json)

        #format data for user creation
        clean_user_data(hash)


        @user = User.new(hash)

        if @user.save
          render json: @user
        else
          render json: {errors: @user.errors}
        end

      end



      def create
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