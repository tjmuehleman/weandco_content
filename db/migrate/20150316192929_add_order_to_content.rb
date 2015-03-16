class AddOrderToContent < ActiveRecord::Migration
  def change
    add_column :content_blocks, :order_number, :integer
  end
end
