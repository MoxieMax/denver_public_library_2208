require 'pry'
class Author
  attr_reader :first_name, :last_name, :books
  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @books = []
  end
  
  def name
    @first_name + " " + @last_name
  end
  
  def write(title, publication_date)
    b = Book.new({
      author_first_name: @first_name, 
      author_last_name: @last_name, 
      title: title, 
      publication_date: publication_date
      })
      @books << b
      return b
  end
end