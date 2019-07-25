class CreatePollDataFavorabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :poll_data_favorabilities do |t|
      t.integer :poll_id
      t.integer :candidate_id
      t.integer :favorable
      t.integer :unfavorable
      t.integer :dont_know
      t.timestamps
    end
  end
end
