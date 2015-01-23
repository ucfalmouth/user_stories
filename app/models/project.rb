class Project < ActiveRecord::Base
  belongs_to :department
  has_many :user_stories
  validates :name, :goal, :department_id, presence: true

  def self.howdie
    puts "HOWDIE"
  end
end
