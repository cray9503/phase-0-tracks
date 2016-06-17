# Encrypt Method ----

  # Encrypts password by changing every character to the next letter in the alphabet
def encrypt(stg)
  index = 0
  while index < stg.length
    if stg[index] == "z"
      stg[index] = "a"
    else
      stg[index] = stg[index].next
    end
    index += 1
  end
	p stg
end

# ---- End Encrypt Method


# Decrypt Method ----

  # Decrypts passwrord by moving each character back one letter
def decrypt(stg)
	index = 0
	while index < stg.length
		alpha = "abcdefghijklmnopqrstuvwxyz"
		currentLetter = stg[index]
		currentLetter = alpha.index(currentLetter) - 1
		stg[index] = alpha[currentLetter]
		index += 1
	end
	p stg
end

# ---- End Decrypt Method


# Driver Code ----

encrypt("zed")
encrypt("abc")
decrypt("bcd")
decrypt("afe")

# Nested Method
decrypt(encrypt("swordfish"))

# start loop that doesnt stop until user puts in a valid input
valid_input = false

until valid_input

  #ask user whether they would like to decrypt on encrypt password
  puts "Would you like to encrypt or decrypt your passcode?"
  pwdQuestion = gets.chomp

  # Start if elsif statement if invalid input let them know we didnt understand and restart
  if pwdQuestion == "encrypt"
    puts "Enter password you would like to encrypt"
    userPwd = gets.chomp
    encrypt(userPwd)
    valid_input = true
  elsif pwdQuestion == "decrypt"
    puts "Enter password you would like to decrypt"
    userPwd = gets.chomp
    decrypt(userPwd)
    valid_input = true
  else
    puts "Sorry. I didnt understand your response"
  end

end

# ---- End Driver Code
