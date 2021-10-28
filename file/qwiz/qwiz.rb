current_path = File.dirname(__FILE__) # получаем текущую директорию

questions_count = 0                   # инициализация необходимых переменных

good_answers = 0

user_answer = ""

file_path_questions = current_path + "/data/questions.txt" # прописываем путь имя файлов для открытия

file_path_answers = current_path + "/data/answers.txt"

if File.exist?(file_path_questions && file_path_answers) # проверка на наличие файлов и считывание в случае успеха

  file_1 = File.new(file_path_questions, "r:UTF-8")

  questions = file_1.readlines

  file_1.close

  file_2 = File.new(file_path_answers, "r:UTF-8")

  answers = file_2.readlines

  file_2.close

else

  puts "Файл не найден" # вслучае не прохождения проверки

  return

end

questions.each do |string| # основной блок задаем вопросы, проверяем ответы и считаем правильные и неправильные

  puts string

  user_answer = gets.encode("UTF-8")

  if answers[questions_count] == user_answer

    puts "Верный ответ!"

    good_answers += 1

  else 

    puts "Неправильный ответ. Правильный ответ:" + answers[questions_count]

  end

  questions_count += 1

end

puts " У вас #{good_answers} правильных ответов из #{questions_count}" # выводим итоги