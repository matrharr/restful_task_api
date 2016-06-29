require 'spec_helper'
require 'rails_helper'

describe Task do
  before { @task = FactoryGirl.build(:task) }

  subject { @task }

  it { should respond_to(:title)}
  it { should respond_to(:description)}

  it { should be_valid }

end