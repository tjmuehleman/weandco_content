class ContentBlock < ActiveRecord::Base
  has_many :tools, foreign_key: "content_block_id"

  has_attached_file :avatar,
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :use_timestamp => false,
    :storage => :s3,
    :s3_protocol => :https,
    :s3_credentials  => {      
      :bucket => ENV["BUCKET_NAME"],
      :ACCESS_KEY_ID => ENV["AWS_ACCESS_KEY_ID"],
      :SECRET_ACCESS_KEY => ENV["AWS_SECRET_ACCESS_KEY"]
    },
    :path => ":id/:style/:style_:basename.:extension",
    :convert_options => { :all => '-background white -flatten +matte' }

  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
