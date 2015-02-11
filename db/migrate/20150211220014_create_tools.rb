class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.string :url
      t.integer :content_block_id

      t.timestamps null: false
    end
  end
end
