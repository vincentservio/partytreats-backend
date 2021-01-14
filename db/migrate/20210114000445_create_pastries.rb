class CreatePastries < ActiveRecord::Migration[6.0]
  def change
    create_table :pastries do |t|
      t.text :type_of
      t.text :theme
      t.text :color
      t.text :size
      t.integer :price

      t.timestamps
    end
  end
end
