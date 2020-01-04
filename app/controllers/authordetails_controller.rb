class AuthordetailsController < ApplicationController
  before_action :set_authordetail, only: [:show, :edit, :update, :destroy]
  before_action :check_session


  # GET /authordetails
  def index
    @authordetails = Authordetail.includes(:author)
    #@authordetailssss = Authordetail.joins(:author).where("author_id = ?", 6)

  end
  # GET /authordetails/1
  def show

  end

  # GET /authordetails/new
  def new 
    @authordetail = Authordetail.new

  end

  # GET /authordetails/1/edit
  def edit
    @author= @authordetail.author.name
 puts "-------------------------------------------------------"
    puts @author
 puts "-------------------------------------------------------"
  
  end


  # POST /authordetails
  def create
    @authordetail = Authordetail.new(authordetail_params)

    if @authordetail.save
      redirect_to @authordetail, notice: 'Authordetail was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /authordetails/1
  def update
    @author= @authordetail.author

    if @authordetail.update(authordetail_params)
      #redirect_to @authordetail, notice: 'Authordetail was successfully updated.'

      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  # DELETE /authordetails/1
  def destroy
    @authordetail.destroy
    redirect_to authordetails_url, notice: 'Authordetail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authordetail
      @authordetail = Authordetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def authordetail_params
      params.require(:authordetail).permit(:name ,:bio, :email, :mobile_No, :author_id)
    end

    def check_session
      if session[:user_id]
         
      else  
          redirect_to  page_index_url, notice: 'login is required.' 
      end 
    end


end
