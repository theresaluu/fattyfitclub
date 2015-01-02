class CreateWeighIns < ActiveRecord::Migration
  def change
    create_table :weigh_ins do |t|
      t.integer :member_id
      t.float :weight
      t.integer :body_fat

      t.timestamps
    end
  end
end
