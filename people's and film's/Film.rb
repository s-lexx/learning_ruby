class Film

  def initialize(film, drejtor) # конструктор класса и определения переменных

    @film_name = film
    @drejtor_name = drejtor

  end

  def film_name # метод для получения названия фильма

    return @film_name

  end

  def drejtor_name # метод для получения имени режиссера

    return @drejtor_name

  end

end