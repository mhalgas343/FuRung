class Tag < ActiveRecord::Base
	has_many :imagetags
	has_many :images, :through => :imagetags
end
