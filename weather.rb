=begin
In weather.dat you’ll find daily weather data for Morristown, NJ for June 2002. Download this text file, then write a
program to output the day number (column one) with the smallest temperature spread (the maximum temperature
is the second column, the minimum the third column).
=end
min = []
dif = []
colday = []
colmax= []
colmin = []
file =File.open('weather.dat')
 file.readlines.each do |line|
 index = line.split(/\s+/)
 columday = index[1].to_i
 colummax = index[2].to_i
 colummin = index[3].to_i
 colday << columday
 colmax << colummax
 colmin << colummin
end
file.close

for num in 0 ... colday.length
  if colmax[num] > 0 && colmin[num] > 0
      dif[num] = colmax[num] - colmin[num]
  end
end
dif = dif.compact
min = dif.min
puts "the day with minimu temperature is #{min}"
