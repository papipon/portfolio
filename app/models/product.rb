class Product < ApplicationRecord
	has_many :imgs
	has_many :reviews
end
