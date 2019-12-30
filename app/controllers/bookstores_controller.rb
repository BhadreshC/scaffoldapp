class BookstoresController < ApplicationController



  before_action :check_session
  before_action :set_bookstore, only: [:show, :edit, :update, :destroy]

  # GET /bookstores
  # GET /bookstores.json
  def index
    @bookstores = Bookstore.all
  end

  # GET /bookstores/1
  # GET /bookstores/1.json
  def show  
    @bookstores = Bookstore.find(params[:id])
       puts @bookstores.as_json
  end

  # GET /bookstores/new

  def new
    @bookstore = Bookstore.new

  end

  # GET /bookstores/1/edit
  def edit

  end

  # POST /bookstores
  # POST /bookstores.json
  def create


    @bookstore = Bookstore.new(bookstore_params)

    respond_to do |format|
      if @bookstore.save
        format.html { redirect_to @bookstore, notice:  'Bookstore was successfully created.' }
        puts @bookstore.as_json 
        format.json { render :show, status: :created, location: @bookstore }
      else
        
        format.html { render :new }
        format.json { render json: @bookstore.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /bookstores/1
  # PATCH/PUT /bookstores/1.json
  def update
    respond_to do |format|
      if @bookstore.update(bookstore_params)
        format.html { redirect_to @bookstore, notice: 'Bookstore was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookstore }
      else
        format.html { render :edit }
        format.json { render json: @bookstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookstores/1
  # DELETE /bookstores/1.json
  def destroy
    @bookstore.destroy
    respond_to do |format|
      format.html { redirect_to bookstores_url, notice: 'Bookstore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookstore
      @bookstore = Bookstore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookstore_params
      params.require(:bookstore).permit(:title, :author_name, :price, :EmailAddress, :publishedyear, :ISBN, :author_id, :name)
    end

    def check_session
      if session[:user_id]
         
      else  
          redirect_to  page_index_url, notice: 'login is required.' 
      end 
    end
    
end



