def Read():
    List = []
    file_ = open("customers.txt","r")
    for line in file_:
        List.append(line[:-1])
    return List

def Customer(N):
    file_ = open("customers.txt","a")
    file_.write(N+"\n")
    file_.close()


def borrow_(N):
    file_ = open(N+".txt","r")
    borrow_ = {}
    for line in file_:
        line = line.replace("\n","")
        d = line.split(",")
        borrow_[d[0]] = d[1:]
    file_.close()
    return borrow_
