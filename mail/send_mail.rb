require "pony"
require "io/console"

my_mail = "alexey83@list.ru"  #сохраняем почту отправителя]

puts "Введите пароль от вашеней почты #{my_mail} для отправки письма:" # запрашиваем пароль для почты
password = STDIN.noecho(&:gets).chomp


puts " Введите адресата письма:" # запрашиваем адресата для пиьсма и текст письма
mail_to = STDIN.gets.chomp

puts "Что написать в письме"
body = STDIN.gets.chomp

Pony.mail(
{

  :subject => "Привет из руби!",
  :body => body,
  :to => mail_to,
  :from => my_mail,

  :via => :smtp,
  :via_options => 
  {
    :address => 'smtp.list.ru',
    :port => '465', 
    :tls => true,
    :user_name => my_mail,
    :password => password,
    :authentication => :plain
  }
}
)

puts "Письмо отправлено успешно!"