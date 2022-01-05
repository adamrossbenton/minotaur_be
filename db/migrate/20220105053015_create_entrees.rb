class CreateEntrees < ActiveRecord::Migration[6.1]
  def change
    create_table :entrees do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :gf
      t.boolean :df

      t.timestamps
    end
  end
end
