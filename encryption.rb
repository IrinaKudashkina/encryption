# encoding utf-8

require 'digest'

puts "Введите слово или фразу для шифрования:"
phrase = $stdin.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
method = $stdin.gets.to_i

until method.between?(1, 2)
  puts "Выберите 1 или 2"
  method = $stdin.gets.to_i
end

result =
  case method
  when 1
    Digest::MD5.hexdigest phrase
  when 2
    Digest::SHA1.hexdigest phrase
  end

puts "Вот что получилось:"
puts result
