class Human

  def initialize(first_mane, middle_name, age) # конструктор класса, определение необходимых переменных

    @first_name = first_mane
    @middle_name = middle_name
    @age = age
    @favorite_movie = nil

  end

  def old? # метод для определения является человек пожилой или нет

    @age.to_i > 60 ? true : false 

  end

  def film=(favorite_movie) # назначения любимого фильма для человека 

    @favorite_movie = favorite_movie

  end

  def film # получение названия любимого фильма для человека

    @favorite_movie

  end
  
  def full_name # вывод полного имени с учетом признака пожилой или не пожилой человек

    old? ? "#{@first_name} #{@middle_name}" : @first_name

  end

end