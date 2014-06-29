class CreateGrads < ActiveRecord::Migration
  def change
    create_table :grads do |t|
      t.string :first_name
      t.string :last_name
      t.integer :student_num
      t.string :email
      t.date :graduation_date
      t.text :notes

      t.timestamps
    end
  end
end
