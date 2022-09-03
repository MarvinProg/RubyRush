require "pony"
require "io/console"

my_email = "lomakin-as@mail.ru"

puts "Enter password: "
password_user = STDIN.noecho(&:gets).chomp

puts "Enter email another person: "
person_email = STDIN.gets.chomp 

puts "Enter subject email: "
subject = STDIN.gets.chomp 

puts "Enter text email: "
text_email = STDIN.gets.chomp 

begin 
  Pony.mail({
    :subject => subject, 
    :body => text_email, 
    :to => person_email, 
    :from => my_email, 
    via: :smtp,
    via_options: {
      address: 'smtp.mail.ru', # это хост, сервер отправки почты
      port: '465', # порт
      tls: true, # если сервер работает в режиме TLS
      user_name: my_email, # используем наш адрес почты как логин
      password: password_user, # задаем введенный в консоли пароль
      authentication: :plain # "обычный" тип авторизации по паролю
    }
  })

  puts "Email send!"
rescue Net::SMTPFatalError => error
  puts "Dont correct email adress: " + error.message
  # спасти, с английского.
  #пишем, что должно сработать, когда вышло исключение. 
  # puts "Dont send email"
  # выполняется, что бы не прирывать программу.
  # Если произошла ошибка, воплняется
rescue SocketError
  # Можно не сохранять ошибку в переменную
  puts 'Dont connect to server.'
rescue Net::SMTPAuthenticationError => error
  puts 'Dont correct password: ' + error.message
# ensure
  #код будет выполнен в любом слуае. После того, как будет выпонен основной код.
  # Выподняется в любом случае. 
  # puts "Attempt send email the end."
end
