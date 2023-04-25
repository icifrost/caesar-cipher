puts "**CAESAR CIPHER**"
puts "Please enter text to encrypt:"
text = gets.chomp
puts "Please enter the shift value:" 
value = gets.chomp

def caesar_cipher(cipher_text, shift_value)
    #cipher_text.gsub(/[a-z]/i){|s| (s.ord + shift_value.to_i).chr}
    cipher_text.gsub(/[a-z]/i) do |s|
        base = s.ord < 91 ? 65 : 97
        ((((s.ord - base) + shift_value.to_i) % 26) + base).chr
    end
end

puts caesar_cipher(text,value)