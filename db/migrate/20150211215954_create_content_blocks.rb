class CreateContentBlocks < ActiveRecord::Migration
  def change
    create_table :content_blocks do |t|
      t.text :content
      t.string :headline

      t.timestamps null: false
    end
  end
end
