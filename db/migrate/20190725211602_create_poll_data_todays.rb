class CreatePollDataTodays < ActiveRecord::Migration[5.2]
  def change
    create_table :poll_data_todays do |t|
      t.integer :poll_id
      t.integer :candidate_id
      t.integer :percent
      t.timestamps
    end
  end
end
