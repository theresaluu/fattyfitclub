class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.float :registration_fee
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end
