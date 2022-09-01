require 'net/http'

def get_random_regex_string
  patterns = ["машина", "любовь", "день", "нос", "небо"]
  pattern = patterns.sample

  letter = pattern.split('').sample
  pattern.gsub(letter, ".")
end

def user_word_exist?(user_word)
  uri = "https://ru.wiktionary.org/wiki/" + URI.encode_www_form_component(user_word) 
  wiktionary_page = Net::HTTP.get(URI(uri)).force_encoding('UTF-8')

  if /В настоящий момент текст на данной странице отсутствует/ =~ wiktionary_page
    false
  else
    true
  end
end
