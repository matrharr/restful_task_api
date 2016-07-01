module Api
  module V1
    class UsersController < ApplicationController


      def via_facebook_token

        access_token = params['access-token']

        # make request to facebook api
        uri = URI("https://graph.facebook.com/v2.6/me?access_token=#{access_token}&fields=name%2Cemail%2Cid&format=json&method=get&pretty=0&suppress_http_code=1")

        user_json = Net::HTTP.get_response(uri).body
        hash = JSON.parse(user_json)
        hash.keys.each do |k|
          if k == 'id'
            hash['facebook_id'] = hash[k]
            hash.delete(k)
          end

        end

        @user = User.new(hash)
        if @user.save
          render json: @user
        else
          render json: {errors: @user.errors}
        end

      end


      def create
        # curl -X POST -d "user[name]=matt&user[email]=matrharr@gmail.com" http://localhost:3000/v1/tasks
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