class SessionsController < ApplicationController

  # def show
  #   @user = User.last
  #   render json: @user
  # end

  def create
    @user = User.from_omniauth(request.env['omniauth.auth'])
    if @user.save
      session[:user_id] = @user.id
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