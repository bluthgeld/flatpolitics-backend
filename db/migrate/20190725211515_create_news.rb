class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :date_time
      t.string :title
      t.string :url
      t.string :author
      t.string :content
      t.timestamps
    end
  end
end
