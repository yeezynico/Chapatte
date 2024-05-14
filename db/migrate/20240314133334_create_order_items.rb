class CreateOrderItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
      t.belongs_to :item, index: true
      t.belongs_to :order, index: true
      t.timestamps
    end
  end
end
