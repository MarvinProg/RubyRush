require "pony"
require "io/console"

my_email = "lomakin-as@mail.ru"

puts "Enter password: "
password_user = STDIN.noecho(&:gets).chomp

puts "Enter email another person: "
person_email = STDIN.gets.chomp 

puts "Enter text email: "
text_email = STDIN.gets.chomp 

Pony.mail({
  :subject => "Ruby cool!", 
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
