class Author < ApplicationRecord
#------------------------------

	has_many :addresses, as: :addressable #succeessfull 

	has_one :authordetail #succeessfull 

#------------------------------
	has_many :books #succeessfull 

end
