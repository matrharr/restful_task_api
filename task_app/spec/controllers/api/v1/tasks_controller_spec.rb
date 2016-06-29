require 'spec_helper'
require 'rails_helper'

describe Api::V1::TasksController do
  before(:each) { request.headers['Accept'] = "localhost:3000/api/v1" }

  describe "GET #show" do
    before(:each) do
      @task = FactoryGirl.create :task
      get :show, id: @task.id, format: :json
    end

    it "returns the information of a task" do
      task_response = json_response
      expect(task_response[:title]).to eql @task.title
    end

    # it { should respond_with 200 }
  end

  describe " POST #create" do

    context "when is successfully created" do
      before(:each) do
        @task_attributes = FactoryGirl.attributes_for :task
        post :create, { task: @task_attributes }, format: :json
      end

      it "renders the json of task record just created" do
        task_response = json_response
        expect(task_response[:title]).to eql @task_attributes[:title]
      end

      # it { should respond_with 201 }
    end

    context "when creation is unsuccessful" do
      before(:each) do
        @invalid_task_attributes = { description: "a valid description"}
        post :create, { task: @invalid_task_attributes }, format: :json
      end

      it "renders an errors json" do
        task_response = json_response
        expect(task_response).to have_key(:errors)
      end

      it "renders the json errors on why the task could not be created" do
        task_response = json_response
        expect(task_response[:errors][:title]).to include "can't be blank"
      end

      # it { should respond_with 422 }
    end

  end

  describe "PUT/PATCH #update" do

    context "when task is successfully updated" do
      before(:each) do
        @task = FactoryGirl.create :task
        patch :update, { id: @task.id, task: { title: "Clean the carpet" } }, format: :json
      end

      it "renders the json representation for the updated task" do
        task_response = json_response
        expect(task_response[:title]).to eql "Clean the carpet"
      end

      # it { should respond_with 200 }
    end

    context "when update is unsuccessful" do

      before(:each) do
        @task = FactoryGirl.create :task
        patch :update, { id: @task.id, task: {title: "thisisaninvalidtitlebecauseitistoolong"} }, format: :json
      end

      it "render an errors json" do
        task_response = json_response
        expect(task_response).to have_key(:errors)
      end

      it "renders an errors json" do
        task_response = json_response
        expect(task_response).to have_key(:errors)
      end

      it "renders the json errors message" do
        task_response = json_response
        expect(task_response[:errors][:title]).to include "is too long (maximum is 20 characters)"
      end

      # it { should respond_with 422 }

    end
  end

  describe "DELETE #destroy" do
    before(:each) do
      @task = FactoryGirl.create :task
      delete :destroy, { id: @task.id }, format: :json
    end

    # it { should respond_with 204 }
    # 204 means no content

  end

end