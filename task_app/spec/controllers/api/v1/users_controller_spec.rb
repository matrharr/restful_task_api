require 'spec_helper'
require 'rails_helper'

describe Api::V1::UsersController do

  describe "POST #create" do

    context "when user is successfully created" do
      before(:each) do
        @user_attributes = FactoryGirl.attributes_for :user
        post :create, { user: @user_attributes }
      end

      it "renders the json of user record just created" do
        user_response = json_response
        expect(user_response[:name]).to eql @user_attributes[:name]
      end

      # it { should respond_with 201 }
    end

    context "when creation is unsuccessful" do
      before(:each) do
        @invalid_user_attributes = { email: "matt@gmail.com"}
        post :create, { user: @invalid_user_attributes }
      end

      it "renders an errors json" do
        user_response = json_response
        expect(user_response).to have_key(:errors)
      end

      it "renders the json errors why the user could not be created" do
        user_response = json_response
        expect(user_response[:errors][:name]).to include "can't be blank"
      end

      # it { should respond_with 422 }
    end
  end

  describe "POST #via_facebook_token" do

    context "when user is successfully created with a facebook token" do
      before(:each) do
        @user_attributes = FactoryGirl.attributes_for :user
        post :create, { user: @user_attributes }
      end

      it "renders the json of user record just created" do
        user_response = json_response
        expect(user_response[:name]).to eql @user_attributes[:name]
      end

      # it { should respond_with 201 }
    end

    context "when creation is unsuccessful" do
      before(:each) do
        @invalid_user_attributes = { email: "matt@gmail.com"}
        post :create, { user: @invalid_user_attributes }
      end

      it "renders an errors json" do
        user_response = json_response
        expect(user_response).to have_key(:errors)
      end

      it "renders the json errors why the user could not be created" do
        user_response = json_response
        expect(user_response[:errors][:name]).to include "can't be blank"
      end

      # it { should respond_with 422 }
    end

  end




end