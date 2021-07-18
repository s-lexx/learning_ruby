if Gem.win_platform? # Блок кода для устранения проблемы c кириллицей на платформе Windows

  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
  io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Врага какого персонажа вы хотите узнать: Бэтмен, Шерлок Холмс, Буратино, Фродо Бэгинс, Моцарт"
heroes = (gets.chomp).upcase
  
  case heroes
    
    when "BATMAN", "БЭТМЕН"
    
      puts "Джокер"

    when "ШЕРЛОК ХОЛМС", "SHERLOCK HOLMES"

      puts "Профессор Мориарти"
    
    when "БУРАТИНО", "PINOCCHIO"

      puts "Караба-Барабас"

    when "ФРОДО БЭГГИНС", "FRODO BAGGINS"

      puts "Саурон"

    when "МОЦАРТ", "MOZART"

      puts "Сальери"

    else

      puts "Не удалось найти врага"
    
    end
