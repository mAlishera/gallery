class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.string :type
      t.string :name
      t.text :description
      t.string :picture
      t.integer :price_cents, null: false, default: 0

      t.timestamps
    end
  end
end
