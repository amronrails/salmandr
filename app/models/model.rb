class Model < ActiveRecord::Base
	#relations
		belongs_to :brand
		has_many :cars
	#inbetween
		has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  
	#validations
		validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
