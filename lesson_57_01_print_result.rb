class PrintResult 
  def initialize 
    @status_image = []
    current_path = File.dirname(__FILE__)
    counter = 0
    while counter <= 7 do 
      file_name = current_path + "/lesson_57_image_#{counter}.txt"
      if File.exist?(file_name)
        file = File.new(file_name, "r")
        @status_image << file.read
        file.close
      else 
        @status_image << "\n [ Изображение не найдено ] \n"
      end
      counter += 1
    end
  end

  def print_status(game_hangman) 
    cls_method
    puts "\n Word #{get_word_for_print(game_hangman.letters, game_hangman.good_letters)}"

    puts "Errors: #{game_hangman.errors}. Bad letters: #{game_hangman.bad_letters.join(", ")}"

    print_hangman(game_hangman.errors)

    if game_hangman.status == -1 
      puts "Sorry, you lost"
    elsif game_hangman.status == 1 
      puts "You win!"
    else 
      puts "Count of attempts: #{7 - game_hangman.errors}"
    end
    # # if game_hangman.errors >= 7 
    #   puts "Sorry, you lost"
    # else
    #   # if letters.uniq.size == good_letters.size
    #   if game_hangman.letters.uniq.sort == game_hangman.good_letters.sort
    #     puts "You win!"
    #   else 
    #     puts "Count of attempts: #{7 - game_hangman.errors}"
    #   end
    # end
  end

  def get_word_for_print(letters, good_letters)
    result = ""

    for letter in letters do 
      if good_letters.include?(letter)
        result += letter + " "
      else 
        result += "__ "
      end
    end

    result
  end

  def cls_method 
    system "clear" or system "cls"
  end

  def print_hangman(errors)
    puts @status_image[errors]
    # puts "111"
  end
end
