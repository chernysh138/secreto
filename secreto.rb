require "digest"

puts "Введите слово или фразу для шифрования: "
user_parole = STDIN.gets.chomp
puts "каким методлм необходимо шифровать?"
puts "1 MD5"
puts "2 SHA-1"
user_metod = STDIN.gets.to_i
case user_metod
when 1
  puts Digest::MD5.hexdigest(user_parole)
when 2
  puts Digest::SHA1.hexdigest(user_parole)
else
  puts "выберите 1 или 2"
end
