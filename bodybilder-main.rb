require_relative 'bodybilder.rb'

one = BodyBilder.new
two = BodyBilder.new
three = BodyBilder.new

one.pumping(rand(18..24))
two.pumping(rand(18..24))
three.pumping(rand(18..24))

  one.show_status
  two.show_status
  three.show_status
