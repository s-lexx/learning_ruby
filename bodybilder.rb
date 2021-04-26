class BodyBilder

  def initialize
    @biceps = 0
    @triceps = 0
    @deltoid = 0
  end

  def pumping(muscle_points)

    count = 0

    while count < muscle_points
      
      muscle_select = rand(3)

      case muscle_select 
        when 0 then @biceps += 1
        when 1 then @triceps += 1
        when 2 then @deltoid += 1
      end

      count += 1

    end

  end

  def show_status
    puts "Бицепсы:" + @biceps.to_s
    puts "Трицепсы:" + @triceps.to_s
    puts "Дельтовидная:" + @deltoid.to_s
  end

end