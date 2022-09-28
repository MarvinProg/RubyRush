class Product 
  attr_accessor :price, :count

  def initialize(params)
    @price = params[:price] 
    @count = params[:count]
  end

  def information 
    "Product -> price: #{@price}, count: #{count}"
  end

  def update(params)
    @price = params[:price] if params[:price]
    @count = params[:count] if params[:count]
  end 
end

class Book < Product
  attr_accessor :name_book, :genre

  def initialize(params)
    super

    @name_book = params[:name_book]
    @genre = params[:genre]
  end 

  def information 
    "Book -> price: #{@price}, count: #{count}, "
  end

  def update(params)
    super 

    @name_book = params[:name_book] if params[:name_book]
    @genre = params[:genre] if params[:genre]
  end
end 

class Film < Product
  attr_accessor :name_film, :year_film, :produser

  def initialize(params)
    super

    @name_film = params[:name_film]
    @year_film = params[:year_film]
    @produser = params[:produser]
  end

  def information 
    "Film -> price: #{@price}, count: #{count}, name_film: #{@name_film}, year_film: #{@year_film}, produser: #{@produser}"
  end

  def update(params)
    super 

    @name_film = params[:name_film] if params[:name_film]
    # @year_film = params[:year_film] if params[:year_film]
    if params[:year_film]
      @year_film = params[:year_film] 
    end
    @produser = params[:produser] if params[:produser]
  end

  # def name 
  #   "Superman"
  # end
end

# film = Film.new(price: 22, count: 0)
# puts "Film #{film.name}, price #{film.price}"

film_1 = Film.new(price: 33, count: 1, name_film: "Superman", year_film: 2013, produser: "Zak")
film_2 = Film.new(price: 2345, count: 3, name_film: "Abba", year_film: 2022, produser: "Artem")

book_1 = Book.new(price: 61, count: 2, name_book: "AAA", genre: "RRR")
book_2 = Book.new(price: 47, count: 4, name_book: "BBB", genre: "CCC")

array = [film_1, film_2, book_1, book_2]

puts "List products: "

array.each do |obj|
  puts obj.information
end

puts "===== " * 3

film_1 = Film.new(price: 33, count: 1, name_film: "Superman", year_film: 2013, produser: "Zak")
film_1.count = 7
puts film_1.information

puts "===== " * 3

film_1 = Film.new(price: 33, count: 1, name_film: "Superman", year_film: 2013, produser: "Zak")
film_1.update(count: 5, year_film: 1998)
puts film_1.information
