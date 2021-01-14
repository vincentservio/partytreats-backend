class CreateCustomer < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.text :name
      t.text :email
      t.text :event
      t.text :pastry_id
    end
  end
end
