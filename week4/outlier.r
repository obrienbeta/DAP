#Read in the datafile (Athletes)

#Athletes$Ht (To view single column vector
#athletes[athletes$Sport=="w_polo",]
#athletes[athletes$Sport=="tennis",]

athletes <- read.table('/home/epa/DAP/athletes.txt',header=T, sep=',')

#print 'summary' stats of the weight data) 
print(summary(athletes$Wt))


wpolo <- athletes[athletes$Sport=="w_polo",]

w_polo_men <- wpolo[wpolo[wpolo$Sex==0,]

wpolo <- athletes[athletes$Sport=="w_polo" & athletes$Sex=="0",]

print(summary(wpolo))






