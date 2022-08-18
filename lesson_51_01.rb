class Movie 
  attr_accessor :title, :name_produser 

  def initialize(name_produser, title)
    @name_produser = name_produser
    @title = title
  end
end