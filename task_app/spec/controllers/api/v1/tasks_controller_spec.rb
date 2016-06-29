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
      task_response = JSON.parse(response.body, symbolize_names: true)
      expect(task_response[:title]).to eql @task.title
    end

    # it { should respond_with 200 }

  end



end