class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.float :initial_weight
      t.integer :initial_body_fat
      t.integer :penalties
      t.float :final_weight
      t.integer :final_body_fat
      t.text :goal
      t.integer :team_id

      t.timestamps
    end
  end
end
