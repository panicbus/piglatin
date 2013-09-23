vowels = ['a', 'e', 'i', 'o', 'u']
consonants = ('a'..'z').to_a - vowels

puts "Please enter your name." 
	name = gets.chomp.downcase
	
firstLetter = name[0,1]
secondLetter = name[1,1]
without_firstletter = name[1..-1]
without_secondletter = name[2..-1]

	if vowels.include?(name[0,1]) 
		puts "Your name in Piglatin is " + name.capitalize + "ray. Carry on."
	elsif consonants.include?(name[0,1]) && consonants.include?(name[1,1]) 
		puts "Your name in Piglatin is " + without_secondletter.capitalize + firstLetter + secondLetter + "ay. Congratulations."
	else consonants.include?(name[0,1]) 	
		puts "Your name in Piglatin is " + without_firstletter.capitalize + firstLetter + "ay. Congratulations."
	end