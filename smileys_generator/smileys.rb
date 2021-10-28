def file_read(file_path)

  file = File.new(file_path, "r:UTF-8")

  strings = file.readlines

  file.close

  strings

end

current_path = File.dirname(__FILE__) + "/data/"

if File.exist?(current_path + "eyes.txt" && current_path + "forehead.txt" && current_path + "mouth.txt" && current_path + "nose.txt")

  forehead = file_read(current_path + "forehead.txt")

  eyes = file_read(current_path + "eyes.txt")

  nose = file_read(current_path + "nose.txt")

  mouth = file_read(current_path + "mouth.txt")

else puts "Файл(ы) не найден(ы)"

end  

puts forehead.sample

puts eyes.sample

puts nose.sample

puts mouth.sample