class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :sales_tax
      t.decimal :shipping
      t.decimal :grand_total
      t.integer :user_id
      t.text :order_items

      t.timestamps
    end
  end
end