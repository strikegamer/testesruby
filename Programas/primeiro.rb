puts 'teste'
puts 1
puts 1 + 1
var1 = '1'
puts var1.to_i + 1
puts 'Coloque seu nome:'
nome = gets.chomp
nome = nome + ' Paulo Orlando'
puts nome.reverse
MeusNomes = ['Jean','Paulo','Orlando']
contador = 0
MeusNomes.each do |nome|
  contador = contador +1
  puts 'Nome numero ' + contador.to_s + ': ' + nome
end