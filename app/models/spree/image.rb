module Spree
	class Image < Asset
    has_attached_file :attachment,
                      :styles => { :mini => '48x48>', :small => '100x100>', :product => '240x240>', :large => '600x600>' },
                      :default_style => :product,
                      :storage => :s3,
                      :s3_credentials => "#{Rails.root}/config/s3.yml",
                      :url => '/spree/products/:id/:style/:basename.:extension',
                      :path => ':rails_root/public/spree/products/:id/:style/:basename.:extension'
  end
end