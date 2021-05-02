class BodyBilder

  def initialize
    @biceps = 0
    @triceps = 0
    @deltoid = 0
  end

  def workout(muscle_select)

      case muscle_select 
        when 'biceps' then @biceps += 1
        when 'triceps' then @triceps += 1
        when "deltoid" then @deltoid += 1
      end

  end

  def show_status
    puts "Бицепсы:" + @biceps.to_s
    puts "Трицепсы:" + @triceps.to_s
    puts "Дельтовидная:" + @deltoid.to_s
  end

end