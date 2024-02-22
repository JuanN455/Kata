=begin
 The file football.dat contains the results from the English Premier League for 2001/2. The columns labeled ‘F’ and ‘A’
 contain the total number of goals scored for and against each team in that season (so Arsenal scored 79 goals against
 opponents, and had 36 goals scored against them). Write a program to print the name of the team with the smallest
 difference in ‘for’ and ‘against’ goals.
=end
colA = []
colF = []
colName = []
cond = []
dif =[]
team = ""
min = 0
file = File.open('football.dat')
file.readlines.each do |line|
index = line.split(/\s+/)
columF = index[7].to_i
columA = index[9].to_i
columName = index[2]
colA << columA
colF << columF
colName << columName
end
file.close
for num in 0 ... colA.length
  if colF[num] > 0 && colA[num] > 0
    dif[num] = colF[num] + colA[num]
end
end
dif = dif.compact
min = dif.min
for i in 0 ... colA.length
  cond[i] =  colF[i] + colA[i]
  if cond[i] == min
    team = colName[i]
  end
end
print "the team with smalest difference is #{team}"
