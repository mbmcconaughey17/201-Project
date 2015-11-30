class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :commenter
      t.text :comment
      t.references :app, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
