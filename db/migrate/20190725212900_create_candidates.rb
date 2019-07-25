class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :state
      t.string :party
      t.timestamps
    end
  end
end
