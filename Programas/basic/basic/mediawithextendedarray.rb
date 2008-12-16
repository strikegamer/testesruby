module Enumerable
  def multi_map
    result = []
    self[0].each_index{|i|
      args = self.collect{|x| x[i]}
      result << yield(*args)
    }
    result
  end
end

class Array
  def somar
    inject ( nil) { |sum,x| sum ? sum+x : x}
  end
  
  def media
    somar.to_f / size
  end
end

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
puts "A media de idade dos individuos digitados eh: #{idades.somar.to_f / idades.size}"
puts "A media de idade dos individuos digitados eh: #{idades.media}"
[nomes,idades].multi_map { |nome,idade| puts "#{nome} tem #{idade} anos."}