def read1():
    print("----------------------------------------------------------------------------")
    print("Book ID   Name of Book    Name of Author        Quantity  Price")
    print("----------------------------------------------------------------------------")
    f=open("bookList.txt","r")
    

    
    for line in f:
        line = line.replace("\n"," ")
        print(line.replace(",","  \t  "))
    print("----------------------------------------------------------------------------")

        
    f=open("bookList.txt","r")
    d={}
    for line in f:
        line=line.replace("\n","")
        record = line.split(",")
        d[record[0]] = record[1:]
        
    return d



def read2(d):
    f = open("bookList.txt","w")
    for key, values in d.items():
        f.write(key)
        for j in values:
            f.write(","+j)
        f.write("\n")
    f.close()

