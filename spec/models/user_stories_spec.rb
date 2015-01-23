require 'rails_helper'

describe Project do
  it "has a valid factory" do
    FactoryGirl.create(:user_story)
    expect(:user_story).respond_to?(:valid?)
  end
end
