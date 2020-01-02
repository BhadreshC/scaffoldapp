class Address < ApplicationRecord
#------------------------------
 belongs_to :addressable, polymorphic: true #succeessfull 
#------------------------------
 
end
 