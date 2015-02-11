class ContentBlock < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_many :tools, foreign_key: "content_block_id"
end
