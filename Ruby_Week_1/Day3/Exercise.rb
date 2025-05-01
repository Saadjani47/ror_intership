#Question 1
class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

  def details
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Pages: #{@pages}"
  end
end

book1 = Book.new("Inki Pinki Ponki", "Saad", 1)
puts book1.details

#Question 2
class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def list_books
    if @books.empty?
      puts "The library is empty."
    else
      @books.each_with_index do |book, index|
        puts "#{index + 1}. #{book}"
      end
    end
  end
end

  library = Library.new
  library.add_book("book1")
  library.add_book("book2")
  library.list_books
