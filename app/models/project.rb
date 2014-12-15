class Project < ActiveRecord::Base
  belongs_to :department
  has_many :user_storys
end
