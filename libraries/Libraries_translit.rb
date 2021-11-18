require 'translit'

if (Gem.win_platform?)  ## Блок кода для устранения проблемы c кириллицей на платформе Windows
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts " Введите фразу для траслитерации"  # запрашиваем строку для трансляции и сохраняем ее в переменную

string = gets.chomp 

translite_string = Translit.convert(string, :english)  # проем траслировать в английский 

if(string == translite_string)  # если разницы нет то конвертируем в русский 

  translite_string = Translit.convert(string, :russian)

  puts translite_string

else puts translite_string

end