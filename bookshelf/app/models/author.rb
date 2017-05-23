class Author < ApplicationRecord
	attr_accessor :Book_id, :first_name, :last_name 
	belongs_to :Book

end
