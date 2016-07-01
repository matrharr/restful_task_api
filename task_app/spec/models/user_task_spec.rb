require 'spec_helper'
require 'rails_helper'

describe UserTask do
  before { @user_task = FactoryGirl.build(:user_task) }

  subject { @user_task }

  it { should respond_to(:user_id)}

  it { should be_valid }

end