
puts "enter text: "
text = gets.chomp
puts "enter shift: "
shift = gets.chomp.to_i
if shift > 25
	shift = 25
end
letters = text.split("")
alphanums = Hash.new(0)
letters.each { |letter| 
	if 65 <= letter.ord && letter.ord < 88
		alphanums[letter] = (letter.ord + shift)
	elsif 97 <= letter.ord && letter.ord < 120
		alphanums[letter] = (letter.ord + shift)
	elsif 88 <= letter.ord && letter.ord <=90 
		alphanums[letter] = (letter.ord + shift - 26)
	elsif 120 <= letter.ord && letter.ord <=122
		alphanums[letter] = (letter.ord + shift - 26)
	else
		alphanums[letter] = (letter.ord)
	end
	letter = alphanums[letter].chr
	print letter 
}
print "\n"
