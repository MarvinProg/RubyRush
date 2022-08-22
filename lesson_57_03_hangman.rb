current_path = "./" + File.dirname(__FILE__)

require current_path + "/lesson_57_01_print_result.rb"
require current_path + "/lesson_57_02_game_hangman.rb"
require current_path + "/lesson_57_word_reader.rb"

reader = WordReader.new

printer = PrintResult.new 

word = reader.read_from_file(current_path + "/lesson_57_word.txt")

game_hangman = GameHangman.new(word)

while game_hangman.status == 0 do 
  printer.print_status(game_hangman)
  game_hangman.ask_a_question_letter
end

printer.print_status(game_hangman) 
