class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :question
      t.string :pollster
      t.string :end_date
      t.string :start_date
      t.integer :year
      t.string :race
      t.timestamps
    end
  end
end
