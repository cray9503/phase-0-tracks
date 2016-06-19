# define variable to encrypt
# use a while loop with .next method
# for each index letter of the word, move index up one letter
# print letter
# if there is a blank, put blank


def encrypt(word)
	index  = 0
  while index < word.length
    password = word[index].next 
    index += 1
    puts password.join("")
  	if word[index] == " "
    	p " "
  	else
 	 end
  end
end

# define variable to decrypt
# use a while loop
# define a variable with all letters of the alphabet
# take a word and index each letter
# move backwards one letter
# print letter
# if there is a blank, put blank

def decrypt(word)
	index = 0
	alph = "abcdefghijklmnopqrstuvwxyz"
	while index < word.length
	decrypt_password = alph[(alph.index(word[index])) -1]
	index +=1
	puts decrypt_password.join("")
		if word[index] == " "
    p " "
    	else
   		end
   end
end


#encrypt("abc")
#should return "bcd"
#encrypt("zed")
#should return "afe"
#decrypt("bcd")
#should return "abc
#decrypt("afe")
#should return "zed"

#decrypt(encrypt("swordfish")) did not work for us.


#Ask user if they want to encrypt or decrypt a password
#Get input from use
#If they answer encrypt, ask for the password.
#Run encrypt with password
#If they answer decrypt, ask for the password.
#Run decrypt with password 
#Print results
#Exit

puts "Do you want to decrypt or encrypt a password"
answer = gets.chomp
input = false
until input 
	if answer == "decrypt"
		puts "Gimme a password"
		decrypt_password = gets.chomp
		decrypt(decrypt_password)
		input = true
	elsif answer == "encrypt"
		puts "Gimme a password"
		encrypt_password = gets.chomp
		encrypt(encrypt_password)
		input = true
	else
		puts "Try again"
	end
end

work on aa, string instead of letters, and decrypt(encrypt)