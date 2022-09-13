class Product 
  attr_reader :price, :count

  def initialize(params)
    @price = params[:price] 
    @count = params[:count]
  end
end

class Book < Product
end 

class Film < Product
  # attr_reader :name

  # def initialize(name)
  #   @name = name 
  # end

  def name 
    "Superman"
  end
end

film = Film.new(price: 22, count: 0)

puts "Film #{film.name}, price #{film.price}"


