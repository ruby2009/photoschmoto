class AddUrlToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :url, :string
  end
end
