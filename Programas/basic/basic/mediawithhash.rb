nomesIdades = {}
puts "Programa da media de idade"
4.times do
  puts "Digite o nome do individuo: "
  nome = gets
  puts "Digite a idade do cidadao: "
  idade = gets.to_i
  nomesIdades[nome] = idade
end

nomesIdades.each {|nome,idade| puts "#{nome} tem #{idade} anos."}
puts "A media de idade dos individuos digitados eh: #{(nomesIdades.values.inject(0) {|totalIdade,idade| totalIdade + idade }).to_f / nomesIdades.size}"
