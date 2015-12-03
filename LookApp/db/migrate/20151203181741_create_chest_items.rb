class CreateChestItems < ActiveRecord::Migration
  def change
    create_table :chest_items do |t|
      t.references :app, index: true, foreign_key: true
      t.references :chest, index: true, foreign_key: true
      t.string :price

      t.timestamps null: false
    end
  end
end
