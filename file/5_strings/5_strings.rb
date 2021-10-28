current_path = File.dirname(__FILE__)  # получаем текущую директорию

puts "Введите название файла"  # запрашиваем и получаем от пользовтеля имя файла

user_input = gets.chomp.encode("UTF-8")

file_path = current_path + "/data/" + user_input # формируем полную директорию файла

if File.exist?(file_path)  # пробуем открыть файли и в случае успеха считываем данные из файла

  f = File.new(file_path, "r:UTF-8")

  strings = f.readlines

  f.close

  number_of_rows = strings.length  # определяем число и выводим строк в файле

  puts " Число строк в файле #{number_of_rows}"

  empty_string = 0

  five_strings = ""

  strings.each do |string|  # считаем пустые строки и выбираем 5 последник строк из файла

    if(string.size == 1)

      empty_string += 1

    end

    five_strings << string

  end

  puts "Пустых строк: #{empty_string}"  # выводим результаты

  puts "Последние 5 строк файла:\n " + five_strings 

else puts "Файл не найден"  # если не получилось открыть файл

end