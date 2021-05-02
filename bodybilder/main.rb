require_relative 'BodyBilder.rb'

one = BodyBilder.new
two = BodyBilder.new
three = BodyBilder.new

# 1- ый бодибилбер тренируем в параметра  7 - 5 -10

7.times {one.workout('biceps')} 
5.times {one.workout('triceps')}
10.times {one.workout('deltoid')}

# у 2- го параметры 4 - 10 - 7

4.times {two.workout('biceps')}
10.times {two.workout('triceps')}
7.times {two.workout('deltoid')}

# а у 3-го 5 - 8 - 4

5.times {three.workout('biceps')}
8.times {three.workout('triceps')}
4.times {three.workout('deltoid')}

# показываем результат

one.show_status
two.show_status
three.show_status
