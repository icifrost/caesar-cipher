require './lib/caesar-cipher'

puts "**CAESAR CIPHER**"
puts "Please enter text to encrypt:"
text = gets.chomp
puts "Please enter the shift value:" 
value = gets.chomp
cc = CaesarCipher.new
puts cc.caesar_cipher(text,value)