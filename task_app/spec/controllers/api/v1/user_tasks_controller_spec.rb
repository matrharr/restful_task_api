require 'spec_helper'
require 'rails_helper'

describe Api::V1::UserTasksController do

  describe "POST #create" do

    context "when user task is successfully created" do
      before(:each) do
        @user_task_attributes = FactoryGirl.attributes_for :user_task
        post :create, { user_task: @user_task_attributes }
      end

      it "renders the json of user_task record just created" do
        user_task_response = json_response
        expect(user_task_response[:user_id]).to eql @user_task_attributes[:user_id]
      end

      # it { should respond_with 201 }
    end

    context "when creation is unsuccessful" do
      before(:each) do
        @invalid_user_task_attributes = { user_id: 'string'}
        post :create, { user_task: @invalid_user_task_attributes }
      end

      it "renders an errors json" do
        user_task_response = json_response
        expect(user_task_response).to have_key(:errors)
      end

      it "renders the json errors why the user_task could not be created" do
        user_task_response = json_response
        expect(user_task_response[:errors][:user_id]).to include "is not a number"
      end

      # it { should respond_with 422 }
    end

  end




end