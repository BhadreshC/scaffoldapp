class PageController < ApplicationController

	before_action :check_session_for_redirect


  def index

  end

  private
  	def check_session_for_redirect
  		if session[:user_id]
         puts "--------------------------------------------session is prseent ----------------------------------------------------------------"
         redirect_to :controller => 'books', :action => 'index'
 		
      	else  
          	 puts "	--------------------------------------------sessioin is no more ------------------------------------------------------	"
        end 
  	end	

end
 
 
