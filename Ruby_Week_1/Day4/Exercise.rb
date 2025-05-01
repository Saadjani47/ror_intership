class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

  def title
    @title
  end

  def author
    @author
  end

  def pages
    @pages
  end

  protected
  def formated_details
    "Title: #{@title}\nAuthor: #{@author}\nPages: #{@pages}"
  end

  public
  def details
    puts formated_details
  end
end


class DigitalBook < Book
  def initialize(title, author, pages, format)
    super(title, author, pages)
    @format = format
  end

  def format
    @format = format
  end

  protected
  def formated_details
    super + "\nFormat: #{@format}"
  end
end

book1 = Book.new("Inki Pinki Ponki", "Saad", 1)
book1.details

digital_book = DigitalBook.new("The Subtle Art of Not Giving a Fuck", "Mark Manson ", 1000, "PDF")
digital_book.details

#Accessing through methods
puts book1.title     
puts digital_book.format  