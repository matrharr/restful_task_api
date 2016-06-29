module Api
  module V1
    class TasksController < ApplicationController

      def index
        @tasks = Task.all
        render json: @tasks
      end

      def show
        @task = Task.find(params[:id])
        render json: @task, status: :created
      end

      def create
        #curl -X POST -d "title=Laundry&description=Go to Sunny Laundry and remeber to bring all the pillowcases" http://localhost:3000/tasks

        @task = Task.new(task_params)
        if @task.save
          render json: @task
        else
          #better error handling, this is blank atm
          render text: @task.errors
        end

      end

      def update
        @task = Task.find(params[:id])

        if @task.update(task_params)
          render json: @task
        else
          #better error handling, this is blank atm
          render json: @task.errors
        end

      end

      def destroy
        @task = Task.find(params[:id])
        # @user_task = @task.user_tasks.where(task_id: @task.id)
        if @task.destroy
          render json: "Task has been deleted!"
        else
          #better error handling, this is blank atm
          render json: @task.errors
        end
      end

    private

      def task_params
        # how to format curl request to use require(:task) here
        params.permit(:title, :description)
      end

    end
  end
end