class Item < ActiveRecord::Base
  attr_accessible :name, :icon
  has_attached_file :icon,
    :storage => :s3,
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET_KEY']
    },
    :bucket => 'gowaller',
    :path => 'assets/:class/:attachment/:id.:extension'
  validates_attachment_presence :icon
  validates_attachment_content_type :icon, :content_type => 'image/png'
end
