class AddAttachmentAvatarToContentBlocks < ActiveRecord::Migration
  def self.up
    change_table :content_blocks do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :content_blocks, :avatar
  end
end
