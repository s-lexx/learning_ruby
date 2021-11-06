current_path = File.dirname(__FILE__) #получаем текущую директорию

file_path = current_path + "/data/films_list.txt" # полный путь для открытия файла

if File.exist?(file_path) # открываем файл (если есть), читаем содаржимое файла

  f = File.new(file_path, "r:UTF-8")

  strings = f.readlines

  f.close

  puts "Сегодня Вам предлагается к просмотру фильм: #{strings.sample.chomp}"  

else puts "Файл не найден." # если файkа нет

end

