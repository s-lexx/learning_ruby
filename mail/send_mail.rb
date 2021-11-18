require "pony"
require "io/console"

if (Gem.win_platform?)  ## Блок кода для устранения проблемы c кириллицей на платформе Windows
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end


my_mail = "alexey83@list.ru"  #сохраняем почту отправителя]

puts "Введите пароль от вашеней почты #{my_mail} для отправки письма:" # запрашиваем пароль для почты

password = STDIN.noecho(&:gets).chomp


puts " Введите адресата письма:" # запрашиваем адресата для пиьсма и текст письма

mail_to = STDIN.gets.chomp

puts " Введите тему для письма"

subject = STDIN.gets.encode('UTF-8').chomp

puts "Что написать в письме"

body = STDIN.gets.encode('UTF-8').chomp

Pony.mail(
{

  :subject => subject,
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