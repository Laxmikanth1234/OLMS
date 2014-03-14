class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :description
      t.string :category
      t.boolean :active
      t.string :video_url
      t.string :video_id
      t.string :image_url
      t.boolean :paid
      t.timestamps
    end
  end
end
