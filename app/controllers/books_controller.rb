class BooksController < ApplicationController
  before_action :check_session
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /bookstores
  # GET /bookstores.json
  def index
    @books= Book.all
  end

  # GET /bookstores/1
  # GET /bookstores/1.json
  def show  
    @books = Book.find(params[:id])
    @authorname= @book.author

  end

  # GET /bookstores/new

  def new
    @book = Book.new

  end

  # GET /bookstores/1/edit
  def edit

  end

  # POST /bookstores
  # POST /bookstores.json
  def create


    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice:  'Book was successfully created.' }
        puts @book.as_json 
        format.json { render :show, status: :created, location: @book }
      else
        
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /bookstores/1
  # PATCH/PUT /bookstores/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookstores/1
  # DELETE /bookstores/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to book_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def book_params
    params.require(:book).permit(:title, :price, :language, :publishedyear, :ISBN, :author_id, :name, :user_id)
  end

  def check_session
    if session[:user_id]
       
    else  
        redirect_to  page_index_url, notice: 'login is required.' 
    end 
  end
    
end



