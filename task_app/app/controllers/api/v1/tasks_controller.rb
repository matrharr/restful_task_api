module Api
  module V1
    class TasksController < ApplicationController

      def index
        @tasks = Task.all
        render json: @tasks
      end

      def show
        @task = Task.find(params[:id])
        render json: @task
      end

      def create
        # curl -X POST -d "task[title]=Laundry&task[description]=Go to Sunny Laundry and remeber to bring all the pillowcases" http://localhost:3000/v1/tasks
        p params
        p task_params
        @task = Task.new(task_params)
        if @task.save
          render json: @task
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
        @task.destroy
        head 204
      end

    private

      def task_params
        params.require(:task).permit(:title, :description)
      end

    end
  end
end