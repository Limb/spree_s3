module Spree
  Taxon.class_eval do
    has_attached_file :icon,
      :styles => { :mini => '32x32>', :normal => '128x128>' },
      :default_style => :mini,
      :storage => :s3,
      :s3_credentials => S3_CREDENTIALS,
      :url => '/spree/taxons/:id/:style/:basename.:extension',
      :path => ':rails_root/public/spree/taxons/:id/:style/:basename.:extension',
      :default_url => '/assets/default_taxon.png'
    end
end