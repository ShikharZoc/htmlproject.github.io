#................................................... Program for Borrowing the Book! ............................................................#

import bill
import datetime
import books_detail


def borrow_():
    s=books_detail.read1()

    N = input("Your Name: ")
    if N not in bill.Read():
        bill.Customer(N)
        borrow_ = []
        file2 = open(N+".txt","w")
    else:
        borrow_ = bill.borrow_(N)
        file2 = open(N+".txt","a")
        
    sum_ = 0
    extraB = "Y"
    gg = {}
    while extraB == "Y":
        sorted_ = False
        while not sorted_:
            ID = input("Insert the book ID: ").upper()
            if ID not in s: print("Not valid. Please insert valid option: ")
            elif ID in gg: print("Already selected.")
            elif ID in borrow_: print("Already borrowed. Choose another book.")
            elif s[ID] == 0: print("Out of Stock!!")
            else:
                sorted_ = True
        quantity = int(s[ID][2])
        newQuantity = quantity - 1
        s[ID][2] = str(newQuantity)
        date = str(datetime.datetime.now())[:19]
        file2.write(ID+","+s[ID][0]+","+s[ID][1]+","+s[ID][3]+","+date+"\n")
        sum_ += float(s[ID][3][1:])
        gg[ID] = [s[ID][0],s[ID][1],s[ID][3],date]

        extraB = input("Do you want another book?(Y/N)").upper()
        
        
    
    file2.write("customer's name: "+N+"\n"+"Net Total: " +str(sum_)+"\n")
    file2.close()
    books_detail.read2(s)

    print()
    print("Book Successfully borrowed!!")
    print("Bill: ")
    print()
    print("----------------------------------------------------------------------------")
    print("Name of customer: "+N)
    print("----------------------------------------------------------------------------")
    print("Book ID  Name of Book    Name of Author Price    Date/Time")
    print("----------------------------------------------------------------------------")
    for key, values in gg.items():
        print(key, "\t", values[0], "\t", values[1], "\t", values[2],"\t", values[3])
    print("----------------------------------------------------------------------------")
    print("Total:\t\t\t\t\t$",sum_)
    print("----------------------------------------------------------------------------")




#...................................................  Program for Returning the Book! ...........................................................#


import bill
import datetime
import books_detail

def return_():
    a = books_detail.read1()
    
    N = input("Insert your name:")
    if N not in bill.Read():
        print("No books Borrowed!")
        return
    
    file_ = open(N+".txt","a")
    borrow_ = bill.borrow_(N)
    sum_ = 0
    extraB = "Y"
    choose = {}
    while extraB == "Y":
        sorted_ = False
        while not sorted_:
            ID = input("Insert the Book ID: ").upper()
            if ID not in a: print("Not valid!!")
            elif ID not in borrow_: print("Not borrowed!")
            elif ID in choose: print("Already Chosen")
            else: sorted_ = True
            
        Q = int(a[ID][2])
        newQ = Q + 1
        a[ID][2] = str(newQ)

        todayDate = str(datetime.datetime.now())[:10]
        borrowDate = borrow_[ID][3][:10]
        borrowDuration = (datetime.datetime.strptime(todayDate, "%Y-%m-%d") - datetime.datetime.strptime(borrowDate, "%Y-%m-%d")).days 

        if borrowDuration > 10:
            fine = (borrowDuration - 10) * 1.5
        else:
            fine = 0

        file_.write(ID+","+a[ID][0]+","+a[ID][1]+","+str(fine)+","+todayDate+"\n")
        sum_ += fine
        choose[ID] = [a[ID][0],a[ID][1],fine,todayDate]
        extraB = input("Want to return another book?(Y/N)").upper()

    books_detail.read2(a)

    file_.write("customer's name: "+N+"\n"+"Net total: " +str(sum_)+"\n")
    file_.close()
    print()
    print("Book return Duccessful!")
    print("Bill: ")
    print()
    print("-----------------------------------------------------------------------")
    print("Name of customer: "+N)
    print("-----------------------------------------------------------------------")
    print("Book ID  Book Name      Name of Author    Fine    Date/Time")
    print("-----------------------------------------------------------------------")
    for key, values in choose.items():
        print(key, "\t", values[0], "\t", values[1], "\t", values[2],"  \t", values[3])
    print("-----------------------------------------------------------------------")
    print("Total:\t\t\t\t\t$",sum_)
    print("-----------------------------------------------------------------------")
    

    
