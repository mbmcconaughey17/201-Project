class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :appID
      t.string :name
      t.string :developer
      t.string :platform
      t.string :version
      t.string :price
      t.string :link

      t.timestamps null: false
    end
  end
end
