require_relative 'Film.rb'

if Gem.win_platform? # Блок кода для устранения проблемы c кириллицей на платформе Windows

  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
  io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

Films = [] # создаем пустой массив и сохраняем режиссера
puts "Фильмы какого режиссера Вы хотите посмотреть?"
drejtor = gets.encode("UTF-8")

(0..2).each do |i| # узнаем фильмы и записываем в ранее созданный массив

  puts "Какой-нибудь его хороший фильм?"
  film_name = gets.encode("UTF-8")
  film = Film.new(film_name, drejtor)
  Films << film
end

film_choise = Films.sample # выбираем случайный фильм и выводим о нем информацию
puts "И сегодня вечером рекомендую посмотреть: #{film_choise.film_name}"
puts "От режиссера: #{film_choise.drejtor_name}"
