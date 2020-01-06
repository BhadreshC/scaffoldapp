class Authordetail < ApplicationRecord
#-----------------------------
	belongs_to :author#succeessfull                                           
#------------------------------
validates :email,  
            presence: true,  
            uniqueness: true,  
            format: {  
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i  
            }

validates :bio, presence: true
validates :mobile_No, presence: true

end

