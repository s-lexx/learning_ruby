require_relative 'film.rb'
require_relative 'human.rb'

if Gem.win_platform? # Блок кода для устранения проблемы c кириллицей на платформе Windows

  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
  io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

Mans = [] # Создаем массив обьектов класса человек

3.times do |i| # Запрашиваем и вносим имя, отчество и возраст

  puts "Введите имя, отчество и возраст #{i + 1} человека через пробел" 

  name = gets.encode("UTF-8")

  puts "Вы ввели #{name.split(" ").first} #{name.split[1]} #{name.split(" ").last}"

  Mans << Human.new(name.split(" ").first,name.split[1],name.split(" ").last)

end

3.times do |i| # Запрашиваем любимые фильмы для наших людей

  puts "Введите название любимого фильма для #{Mans[i].full_name}" 

  Mans[i]. film = (gets.encode("UTF-8"))

end

3.times do |i| # Выводим людей и их любимые фильмы

  puts "#{Mans[i].full_name} с любимым фильмом:  #{Mans[i].film}" 

end
