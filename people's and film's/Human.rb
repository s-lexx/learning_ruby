class Human

  def initialize(first_mane, middle_name, age)

    @first_name = first_mane
    @middle_name = middle_name
    @age = age
    @favorite_movie = nil

  end

  def old?

    @age > 60 ? true : false 

  end

  def set_film(favorite_movie)

    @favorite_movie = favorite_movie

  end

  def get_film

    return @favorite_movie

  end
  
  def full_name

    old? ? "#{@first_name} #{@middle_name}" : @first_name

  end

end