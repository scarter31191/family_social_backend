class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :image_url
      t.string :description
      t.string :user_id
      t.datetime :date
      t.timestamps
    end
  end
end
