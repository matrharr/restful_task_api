require 'spec_helper'
require 'rails_helper'

describe User do
  before { @user = FactoryGirl.build(:user) }

  subject { @user }

  it { should respond_to(:name)}

  it { should be_valid }

end