class Library
  attr_reader :name, :books, :authors
  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end
  
  def add_author(author_name)
    @authors << author_name
    @books.concat(author_name.books)
  end
end