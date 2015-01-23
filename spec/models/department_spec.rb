require 'rails_helper'

describe Department do
  it "has a valid factory" do
    FactoryGirl.create(:department)
    expect(:department).respond_to?(:valid?)
  end
  it "is invalid without a name" do
    expect(FactoryGirl.build(:department, name: nil)).not_to be_valid
  end
end
