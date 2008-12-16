nomes = []
idades = []
puts "Programa da media de idade"
4.times do
   puts "Digite o nome do individuo: "
   nomes << gets
   puts "Digite a idade do cidadao: "
   idades << gets.to_i
end

nomes.zip(idades).each {|nome,idade| puts "#{nome} tem #{idade} anos."}
puts "A media de idade das individuos digitados eh: #{(eval idades.join('+')).to_f / idades.size}"