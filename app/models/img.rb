class Img < ApplicationRecord
	attachment :image
	belongs_to :product
end
