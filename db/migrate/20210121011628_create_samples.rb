class CreateSamples < ActiveRecord::Migration[6.0]
  def change
    create_table :samples do |t|
      t.string :title
      t.text :photo1
      t.text :photo2
      t.text :photo3

      t.timestamps
    end
  end
end
