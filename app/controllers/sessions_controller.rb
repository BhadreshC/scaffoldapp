class SessionsController < ApplicationController
  
  before_action :check_session_for_new_loign,  only: [:new]



  def new
    params[:email] = cookies[:email] unless cookies[:email].nil?
  end

  def create
  	user = User.find_by_email(params[:email])   
    if user && user.authenticate(params[:password])   
      session[:user_id] = user.id   
      #cookies[:email] = {:value => params[:email] , :expires => 2.weeks.from_now }
      cookies[:email] = {:value => params[:email] , :expires => 2.minutes}
      cookies[:password]=  {:value => params[:password] , :expires => 2.minutes }
      

     puts "-----------------------------cookies are stored in browser------------------------"
     puts cookies[:email]
     puts  cookies[:password]


      redirect_to bookstores_url, notice: 'Logged in!'
      
    else   
      render :new   
  	end
  end 
  def destroy
  	session[:user_id] = nil   
    redirect_to root_url, notice: 'Logged out!'   
  end


  private 
  def check_session_for_new_loign
      if session[:user_id]
        redirect_to bookstores_url, notice: 'You are Already Login'
      else  
         # redirect_to  page_index_url, alert: 'login is required.' 
         #edirect_to bookstores_url
         #redirect_to :controller => 'sessions', :action => 'new' 
        puts "this is else of check_session_for_new_loign in sessions controller "

      end  
   
  end

end