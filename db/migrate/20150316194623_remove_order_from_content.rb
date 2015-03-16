class RemoveOrderFromContent < ActiveRecord::Migration
  def change
    remove_column :content_blocks, :order_number, :integer
  end
end
