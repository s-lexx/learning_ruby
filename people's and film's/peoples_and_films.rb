require_relative 'Film.rb'
require_relative 'Human.rb'

if Gem.win_platform? # Блок кода для устранения проблемы c кириллицей на платформе Windows

  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
  io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Введите имя первого человека" # Создаем 3-х человек и запрашиваем их имена

man1 = Human.new(gets.encode("UTF-8"),nil,20)

puts "Введите имя второго человека"

man2 = Human.new(gets.encode("UTF-8"), nil,25)

puts "Введите имя трерьего человека"

man3 = Human.new(gets.encode("UTF-8"), nil,30)


puts "Любимый фильм 1-го человека" # Запрашиваем любимые фильмы для ранее введенных людей

man1.set_film(gets.encode("UTF-8"))

puts "Любимый фильм 2-го человека"

man2.set_film(gets.encode("UTF-8"))

puts "Любимый фильм 3-го человека"

man3.set_film(gets.encode("UTF-8"))


puts "#{man1.full_name}с любимым фильмом: #{man1.get_film}" # Выводим людей и их любимые фильмы

puts "#{man2.full_name}с любимым фильмом: #{man2.get_film}"

puts "#{man3.full_name}с любимым фильмом: #{man3.get_film}"

