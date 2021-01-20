class AddCustomerIdToPastries < ActiveRecord::Migration[6.0]
  def change
    add_column :pastries, :customer_id, :text
  end
end
