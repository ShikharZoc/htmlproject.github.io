import re
a= input("Enter the filename: ") 
fl= open(a,"r") #opens the file
f= fl.read() #reads the file
alphabet= 'abcdefghijklmnopqrstuvwxyz'
encrypt='' #defining variable
decrypt=''

#encrypt
key=int(input('Enter the key for encryption: ')) #asks the key for encryption
for i in f: #reads each letter from the file
        pos= alphabet.find(i) #finds the position of the letter in alphabet
        newPos= (pos+key)%26  #encrypts the file with the key
        encrypt+= alphabet[newPos] #stores the enrypted message in the variable
print("Your encrypted message is: "+ encrypt)
file= open(a,"w")   #opens the file in write mode
file.write(re.sub(r"<string>ABC</string>(\s+)<string>(.*)</string>",r"<xyz>ABC</xyz>\1<xyz>\2</xyz>",encrypt)) #replaces the file object with encrypted message
q= input("Do you want to decrypt?(Y/N): ") 
if q== "Y":

    #decrypt
        k=int(input('Enter the key for decryption: '))
        for i in encrypt:
            pos=alphabet.find(i)
            newPos= (pos-k)%26 #decrypts the file with the key
            decrypt+= alphabet[newPos]
        print("Your decrypted message is: "+decrypt)
        file= open(a,"w")
        file.write(re.sub(r"<string>ABC</string>(\s+)<string>(.*)</string>",r"<xyz>ABC</xyz>\1<xyz>\2</xyz>",decrypt))
        file.close()
        
else:
        file.close()
