require 'rails_helper'

describe Project do
  it "has a valid factory" do
    FactoryGirl.create(:project)
    expect(:project).respond_to?(:valid?)
  end
  it "is invalid without a name" do
    expect(FactoryGirl.build(:project, name: nil)).to_not be_valid
  end
  it "is invalid without a goal" do
    expect(FactoryGirl.build(:project, goal: nil)).to_not be_valid
  end
  it "is invalid if not assigned to a department" do
    expect(FactoryGirl.build(:project, department_id: nil)).to_not be_valid
  end
end
