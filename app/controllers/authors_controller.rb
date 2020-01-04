class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]
  before_action :check_session
  

  # GET /authors  
  def index
    @authors = Author.order(:id)
  
   # @instance_variable = ModelClass.all
  end
  
  # GET /authors/1
  def show
    @ad = @author.authordetail

  end

  # GET /authors/new
  def new
    @author = Author.new
    @author.build_authordetail
    #@author.authordetail.build
  
  end

  # GET /authors/1/edit
  def edit  
    
  end

  # POST /authors
  def create
    @author = Author.new(author_params)
    @ad = Authordetail.new() 
    if @author.save
      redirect_to @author, notice: 'Author was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /authors/1
  def update
    if @author.update(author_params)
      redirect_to @author, notice: 'Author was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /authors/1
  def destroy
    @author.destroy
    redirect_to authors_url, notice: 'Author was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])  
    end

    # Only allow a trusted parameter "white list" through.
     def author_params
      params.require(:author).permit(:name, :address,:author_id, authordetail_attributes: [:id, :bio, :email, :mobile_No])
    end

    def check_session
      if session[:user_id]
         
      else  
          redirect_to  page_index_url, notice: 'login is required.' 
      end 
    end
end 
