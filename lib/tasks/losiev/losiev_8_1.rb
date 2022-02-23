def get_volume_of_cuboid(length, width, height)
  length * width * height
end

if $PROGRAM_NAME == __FILE__
  puts "This program calculates the volume of a cuboid."
  puts get_volume_of_cuboid(10, 15, 9)
end