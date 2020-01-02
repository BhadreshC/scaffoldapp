class User < ApplicationRecord
#------------------------------
has_many :books #processing 

#has_and_belongs_to_many :books # Not working 
has_many :addresses, as: :addressable #succeessfull 
 
#------------------------------
  has_secure_password
   
  validates :username,  
            presence: true  
  #validates :last_name  
           
  validates :email,  
            presence: true,  
            uniqueness: true,  
            format: {  
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i  
            }  
    def to_s  
      "#{username}"  
    end  
end
                                                                            