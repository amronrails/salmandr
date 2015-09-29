class Brand < ActiveRecord::Base
	#relations
		has_many :models
	#inbetween
		has_attached_file :icon, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  
	#validations
		validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/
end
