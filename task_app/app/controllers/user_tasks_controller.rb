class UserTasksController < ApplicationController

  def create
    p "^" * 80
    p params
    @user_task = UserTask.new(user_task_params)
    if @user_task.save
      render json: @user_task
    else
      render text: "Task could not be assigned"
    end
  end

  private
    def user_task_params
      params.permit(:user_id, :task_id)
    end

end