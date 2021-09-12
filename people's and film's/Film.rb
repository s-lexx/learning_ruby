class Film

  def initialize(film, director) # конструктор класса и определения переменных

    @film_name = film
    @director_name = director

  end

  def film_name # метод для получения названия фильма

    @film_name

  end

  def director_name # метод для получения имени режиссера

    @director_name

  end

end