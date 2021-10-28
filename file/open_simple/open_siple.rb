file = File.new("./data/quotes.txt","r:UTF-8")  # открываем файл и читаем содиржимое

content = file.read

puts content  # выводим содержимое в консоль