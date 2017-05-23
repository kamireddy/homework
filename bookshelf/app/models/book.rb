class Book < ApplicationRecord
	attr_accessor :title 
	has_many :authors
end
