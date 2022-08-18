require "./lesson_49_01_print_result.rb"
require "./lesson_49_02_game_hangman.rb"

printer = PrintResult.new 

word = ARGV[0]

game_hangman = GameHangman.new(word)

while game_hangman.status == 0 do 
  printer.print_status(game_hangman)
  game_hangman.ask_a_question_letter
end

printer.print_status(game_hangman) 
