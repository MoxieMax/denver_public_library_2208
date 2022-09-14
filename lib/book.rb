class Book
  attr_reader :author_first_name, :author_last_name, :title, :publication_date
  
  def initialize(attributes)
    @author_first_name = attributes.fetch(:author_first_name)
    @author_last_name = attributes.fetch(:author_last_name)
    @title = attributes.fetch(:title)
    @publication_date = attributes.fetch(:publication_date)
  end
  
  def author
    @author_first_name + " " + @author_last_name
  end
  
  def publication_year
    @publication_date.split(/,\s/).last
  end
end