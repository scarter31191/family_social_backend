class Events < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :image_url
      t.string :description
      t.datetime :date
      t.integer :user_id
    end
  end
end
