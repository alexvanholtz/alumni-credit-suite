class CreateAwardCeremonies < ActiveRecord::Migration
  def change
    create_table :award_ceremonies do |t|
      t.string :ceremony
      t.boolean :isMajor

      t.timestamps
    end
  end

  def self.down
    drop_table :award_ceremonies
  end
  
end
