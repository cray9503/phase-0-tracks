# define variable to encrypt
# use a while loop with .next method
# for each index letter of the word, move index up one letter
# print letter
# if there is a blank, put blank


def encrypt(word)
	index  = 0
  while index < word.length
    p "#{word}"[index].next
    index += 1
    
  	if "#{word}"[index] == " "
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
	while index < "#{word}".length
	p alph[	(alph.index("#{word}"[index])) -1]
	index +=1
		if "#{word}"[index] == " "
    p " "
    	else
   		end
   end
end


encrypt("abc")
#should return "bcd"
encrypt("zed")
#should return "afe"
decrypt("bcd")
#should return "abc
decrypt("afe")
#should return "zed"

decrypt(encrypt("swordfish")) 