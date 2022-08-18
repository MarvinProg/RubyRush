class PrintResult 
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
    case errors
    when 0
      puts '
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        '
    when 1
      puts '
        _______
        |/
        |     ( )
        |
        |
        |
        |
        |
        |
      __|________
      |         |
      '
    when 2
      puts '
        _______
        |/
        |     ( )
        |      |
        |
        |
        |
        |
        |
      __|________
      |         |
      '
    when 3
      puts '
        _______
        |/
        |     ( )
        |      |_
        |        \\
        |
        |
        |
        |
      __|________
      |         |
      '
    when 4
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    /   \\
        |
        |
        |
        |
      __|________
      |         |
      '
    when 5
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |
        |
        |
      __|________
      |         |
      '

    when 6
      puts '
        _______
        |/
        |     ( )
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      '
    when 7
      puts '
        _______
        |/     |
        |     (_)
        |     _|_
        |    / | \\
        |      |
        |     / \\
        |    /   \\
        |
      __|________
      |         |
      '
    end
  end
end
