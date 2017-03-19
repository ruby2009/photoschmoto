class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :image_url
      t.string :caption

      t.timestamps
    end
  end
end
