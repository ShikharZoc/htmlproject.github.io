import Borrow_Return
import books_detail


a = "Y"
while a == "Y":
    print("-------------***WELCOME***---------------")
    print("Insert '1' to display the Available books")
    print("Insert '2' for borrowing book.")
    print("Insert '3' for returning book.")
    print("Insert '0' to Quit.")
    print("-----------------------------------------")




    choice = input("Input a Command: ").upper()
    print()
    print()
    while choice == "" or choice not in "1230":
        choice  = input("Not Valid!! Input valid command: ").upper()        
    if choice == "1":
        print("The available books are: ")
        books_detail.read1()
    elif choice == "2":
        Borrow_Return.borrow_()
    elif choice == "3":
        Borrow_Return.return_()
    elif choice == "0":
        a = "N"
        break



    
    print()
    a = input("More customers(Y/N)? ").upper()

print("Thank You! Do visit soon!")    
    
