class Book < ApplicationRecord
  belongs_to :author
    
#create the initialize call back mehtod 
# its output is display on the terminal
	
	after_initialize do |bookstore|
      puts "You have initialized an object!"
    end

  after_touch do |bookstore|
    	puts "You have touched an object"
  	end
 
  after_find do |bookstore|
      puts "You have found an object!"
    end

 	after_destroy :log_destroy_action
 
	  def log_destroy_action
   		puts 'Article destroyed'
  	end
 	
 	before_save { |bookstore| bookstore.title = bookstore.title.downcase }

	#attribute :slug, :string, default: str

  before_create :default_values


 		    def default_values
     			p "bhhbhbhj=--=-=-=-=-=-="
     			o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
     			str = (0..15).map { o[rand(o.length)] }.join
      			  
  			   if self.slug.nil? == true || self.slug.blank? == true || self.slug.class != Integer
      			self.slug = str
    	   	 end	
        end 

  after_update_commit :updated_book_saved_to_db

  	private
 			  def updated_book_saved_to_db
   			 	puts 'Book is updated to database'
 			  end

	after_save_commit :book_saved_to_db
 
 	  private
  			def book_saved_to_db
  			  puts 'book is saved to database'
  			end

	validates :title, presence: true, length: {minimum: 5,  maximum:20}
#	validates :author_name, presence: true, length: {minimum: 3,  maximum:20}
 
	validates_numericality_of :price, presence: true , :greater_than => 0, :less_than => 500

	validates :ISBN , presence:true, length: {minimum: 14, maximum: 15}

	validates :EmailAddress, presence: true 

	validates :publishedyear, presence: true, format: {with: /(19|20)\d{2}/i }


	validates :publishedyear, :numericality => { greater_than_or_equal_to: 2010, less_than: 2020 }


end
