# require_relative "/lesson_103_book.txt"
# require_relative "/lesson_103_film.txt"

# if File.exist?("./lesson_103_book.txt")
#   file = File.new("./lesson_103_book.txt", "r")
#   lines = file.readlines
#   file.close 
# else 
#   puts "File not found"
# end

# if File.exist?("./lesson_103_film.txt")
#   file = File.new("./lesson_103_film.txt", "r")
#   lines = file.readlines
#   file.close 
# else 
#   puts "File not found"
# end

class Product 
  attr_accessor :count, :price

  def initialize(params)
    @count = params[:count]
    @price = params[:price]
  end

  def to_s
    "Count: #{@count} "
  end

  def update_params(params)
    @count = params[:count] if params[:count]
    @price = params[:price] if params[:price]
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end
end

class Book < Product
  attr_accessor :title_book, :gender_author, :author_book

  def self.from_file(file_path)
    lines = File.readlines(file_path).map { |l| l.chomp }

    self.new(
      title_book: lines[0], 
      gender_author: lines[1], 
      author_book: lines[2], 
      price: lines[3].to_i, 
      count: lines[4].to_i
    )
  end

  def initialize(params)
    super 

    @title_book = params[:title_book]
    @gender_author = params[:gender_author]
    @author_book = params[:author_book]
  end

  def to_s
    "Title book: #{@title_book}, gender: #{@gender_author}, author book: #{@author_book}, #{super}."
  end

  def update_params(params)
    super 

    @title_book = params[:title_book]
    @gender_author = params[:gender_author]
    @author_book = params[:author_book]
  end
end 

class Film < Product
  attr_accessor :title_film, :year_film, :producer

  def self.from_file(file_path)
    lines = File.readlines(file_path).map { |l| l.chomp }

    self.new(
      title_film: lines[0], 
      year_film: lines[1], 
      producer: lines[2], 
      price: lines[3].to_i, 
      count: lines[4].to_i
    )
  end

  def initialize(params)
    super 

    @title_film = params[:title_film]
    @year_film = params[:year_film]
    @producer = params[:producer]
  end

  # def convert_to_string
  def to_s
    "Title film: #{@title_film}, year_film: #{@year_film}, producer film: #{@producer}, #{super}."
  end

  def update_params(params)
    super 

    @title_film = params[:title_film] if params[:title_film]
    @year_film = params[:year_film] if params[:year_film]
    @producer = params[:producer] if params[:producer]
  end
end

current_path = File.dirname(__FILE__)
film = Film.from_file(current_path + "/lesson_103_film.txt")
book = Film.from_file(current_path + "/lesson_103_book.txt")

puts film 
puts book 

# puts lines.inspect

begin
  Product.from_file(current_path + '/lesson_103_film.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
