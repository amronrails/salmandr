class Car < ActiveRecord::Base
	#relations
		belongs_to :model
	#inbetween
		has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  
	#validations
		validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
