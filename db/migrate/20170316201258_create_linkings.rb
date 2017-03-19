class CreateLinkings < ActiveRecord::Migration[5.0]
  def change
    create_table :linkings do |t|
      t.references :picture, foreign_key: true
      t.references :gallery, foreign_key: true

      t.timestamps
    end
  end
end
