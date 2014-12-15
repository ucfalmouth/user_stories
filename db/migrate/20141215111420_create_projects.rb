class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :goal
      t.references :department, index: true

      t.timestamps
    end
  end
end
