require 'rexml/document'

class Product
  attr_reader :price

  def initialize(price, amount)
    @price = price
    @amount_available = amount
  end

  # def price
  #   @price
  # end

  def update(options)
  end

  def info
  end

  def show
    "#{info} - #{@price} руб. [осталось: #{@amount_available}]"
  end

  def self.showcase(products)
    puts "Что хотите купить?\n\n"

    products.each_with_index do |product, index|
      puts "#{index}: #{product.show}"
    end

    puts "x. Покинуть магазин\n\n"
  end

  def buy
    if @amount_available > 0
      puts "* * *"
      puts "Вы купили товар #{info}"
      puts "* * *\n\n"

      @amount_available -= 1
      price
    else
      puts "К сожалению, больше нет"
      0
    end
  end

  def self.read_from_xml(file_name)
    file_path = File.dirname(__FILE__) + "/" + file_name

    unless File.exist?(file_path)
      abort "Файл #{file_path} не найден"
    end

    file = File.new(file_path, "r:UTF-8")
    doc = REXML::Document.new(file)
    file.close

    result = []
    product = nil
 
    doc.elements.each("products/product") do |product_node|
      price = product_node.attributes["price"].to_i
      amount_available = product_node.attributes["amount_available"].to_i
      product_node.each_element("book") do |book_node|
        product = Book.new(price, amount_available)
        product.update(
          title: book_node.attributes["title"],
          author_name: book_node.attributes["author_name"]
        )
      end

      product_node.each_element("movie") do |movie_node|
        product = Movie.new(price, amount_available)
        product.update(
          title: movie_node.attributes["title"],
          director_name: movie_node.attributes["director_name"],
          year: movie_node.attributes["year"]
        )
      end

      product_node.each_element("disk") do |disk_node|
        product = Disk.new(price, amount_available)
        product.update(
          album_name: disk_node.attributes["album_name"],
          artist_name: disk_node.attributes["artist_name"],
          genre: disk_node.attributes["genre"]
        )
      end

      result.push(product)
    end

    return result
  end
end

class Book < Product
  def update(options)
    @title = options[:title]
    @author_name = options[:author_name]
  end

  def info
    "Книга #{@title}, автор: #{@author_name}"
  end
end


class Disk < Product
  def update(options)
    @album_name = options[:album_name]
    @artist_name = options[:artist_name]
    @genre = options[:genre]
  end

  def info
    "Диск #{@artist_name} - #{@album_name} (#{@genre})"
  end
end

class Movie < Product
  def update(options)
    @title = options[:title]
    @director_name = options[:director_name]
    @year = options[:year]
  end

  def info
    "Фильм #{@title}, реж. #{@director_name} (#{@year})"
  end
end

total_price = 0

products = Product.read_from_xml('lesson_108.xml')

choice = nil

while choice != 'x'
  Product.showcase(products)

  choice = STDIN.gets.chomp

  if choice != 'x' && choice.to_i < products.size && choice.to_i >= 0
    product = products[choice.to_i]
    total_price += product.buy
  end
end

puts "Спасибо за покупки, с Вас #{total_price} руб."
