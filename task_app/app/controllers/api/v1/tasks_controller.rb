module Api
  module V1
    class TasksController < ApplicationController
      # include ActionController::MimeResponds
      respond_to :json

      def index
        @tasks = Task.all
        respond_with(@tasks)
      end

      def show
        @task = Task.find(params[:id])
        respond_with(@task)
      end

      def create
        #curl -X POST -d "title=Laundry&description=Go to Sunny Laundry and remeber to bring all the pillowcases" http://localhost:3000/api/v1/tasks
        p task_params
        @task = Task.new(task_params)
        if @task.save
          render json: @task, status: 201
        else
          render json: { errors: @task.errors }, status: 422
        end

      end

      def update
        @task = Task.find(params[:id])

        if @task.update(task_params)
          render json: @task
        else
          render json: { errors: @task.errors }, status: 422
        end

      end

      def destroy
        @task = Task.find(params[:id])
        # @user_task = @task.user_tasks.where(task_id: @task.id)
        @task.destroy
        head 204
      end

    private

      def task_params
        # how to format curl request to use require(:task) here
        params.permit(:title, :description)
      end

    end
  end
end