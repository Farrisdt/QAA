#!/usr/bin/env python

file = "./Alignment_32/Aligned.out.sam"
mapped = 0 #number mapped
not_mapped = 0 #number not mapped
with open(file, "r") as sam:
    for line in sam:
        if line.startswith("@")==False: #get rid of excess lines
            line=line.split() #split by spaces
            flag = int(line[1]) #grab bit flag
            if ((flag & 256) != 256): #if not a secondary alignment
                if((flag & 4) != 4): #if mapped
                    mapped+=1
                else:
                    not_mapped+=1
print("Mapped:",mapped)
print("Unmapped:",not_mapped)
