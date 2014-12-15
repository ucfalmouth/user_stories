class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |t|
      t.string :actor
      t.text :narrative
      t.text :goal
      t.references :project, index: true

      t.timestamps
    end
  end
end
