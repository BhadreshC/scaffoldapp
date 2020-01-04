class Author < ApplicationRecord
#------------------------------
	
	has_many :addresses, as: :addressable, dependent: :destroy #succeessfull 

	has_one :authordetail, dependent: :destroy#succeessfull 

#------------------------------
	has_many :books, dependent: :destroy#succeessfull 
	validates_uniqueness_of :name
	accepts_nested_attributes_for :authordetail #THIS IS FOR THE NESTED FORM ==>>/home/admin2/Desktop/practice/scaffold/app/views/authors/
end
