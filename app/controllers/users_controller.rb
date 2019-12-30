class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :disable_new_signup_for_exiting_login,  only: [:new]
  #after_action :redirect_user_to_bookstore ,only: [:index, :show]

  # GET /users
  def index
    @users = User.all
  end
   
  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to bookstores_url, notice: 'User was successfully created, You are redirect to list of bookstores.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
      end

      def disable_new_signup_for_exiting_login

        if session[:user_id]
          redirect_to bookstores_url, notice: 'After Logout You can SignUp '
        else  
          
          puts "--------------this is else of  disable_new_signup_for_exiting_login in users controller --------------"

        end 
        
      end
    
end
