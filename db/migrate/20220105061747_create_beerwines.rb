class CreateBeerwines < ActiveRecord::Migration[6.1]
  def change
    create_table :beerwines do |t|
      t.string :name
      t.boolean :beer
      t.boolean :draft
      t.boolean :red

      t.timestamps
    end
  end
end
