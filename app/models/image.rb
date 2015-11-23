class Image < ActiveRecord::Base
	has_many :imagetags
	has_many :tags, :through => :imagetags

	has_attached_file :image, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
