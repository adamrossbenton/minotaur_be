class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
