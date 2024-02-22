min = []
dif = []
colA = []
colB= []
colC = []
cond = []
team = ""
file =File.open('weather.dat')
 file.readlines.each do |line|
 index = line.split(/\s+/)
 columday = index[1].to_i
 colummax = index[2].to_i
 colummin = index[3].to_i
 colA << columday
 colB << colummax
 colC << colummin
end
file.close
for num in 0 ... colA.length
  if colB[num] > 0 && colC[num] > 0
      dif[num] = colB[num] - colC[num]
  end
end
dif = dif.compact
min = dif.min
puts "the day with minimu temperature is #{min}"
coluA = []
coluB= []
coluC = []
dife = []
file = File.open('football.dat')
file.readlines.each do |line|
index = line.split(/\s+/)
columF = index[7].to_i
columA = index[9].to_i
columName = index[2]
coluA << columA
coluB << columF
coluC << columName
end
file.close

for num in 0 ... coluA.length
  if coluB[num] > 0 && coluA[num] > 0
    dife[num] = coluB[num] + coluA[num]
end
end
dife = dife.compact
min = dife.min
for i in 0 ... coluA.length
  cond[i] =  coluB[i] + coluA[i]
  if cond[i] == min
    team = coluC[i]
  end
end
print "the team with smalest difference is #{team}"
