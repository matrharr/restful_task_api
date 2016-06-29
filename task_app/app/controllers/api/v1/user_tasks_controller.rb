module Api
  module V1

    class UserTasksController < ApplicationController

      def create
        @user_task = UserTask.new(user_task_params)
        if @user_task.save
          render json: @user_task
        else
          render json: @user_task.errors
        end
      end

      private
        def user_task_params
          params.permit(:user_id, :task_id)
        end

    end

  end
end