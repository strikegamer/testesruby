# array com 3 hashes
brinquedos_do_gatinho = [
  {:formato => 'meia', :material => 'caximira'},
  {:formato => 'rato', :material => 'calico'},
  {:formato => 'bolinho-primavera', :material => 'chenille'}
]

# ordena array com conteudo de 1 dos hashes e iterage
brinquedos_do_gatinho.sort_by { |brinquedo| brinquedo[:formato] }.each do |brinquedo|
   puts "Blixy tem um #{ brinquedo[:formato] } feito de #{ brinquedo[:material] }"
end


# importante observar que nos 2 exemplos abaixo utilizamos if apos a instrucao que desejamos caso verdadeiro.
# No ruby temos essa possibilidade pq eh desta forma que pensamos no mundo real. Pensamos no resultado e depois no''se'

# exemplo de uso da instrucao next
nao_bolinho_primavera = 0
brinquedos_do_gatinho.each do |brinquedo|
  next if brinquedo[:formato] == 'bolinho-primavera'
  nao_bolinho_primavera = nao_bolinho_primavera + 1
end
puts "O que nao eh bolinho primavera: #{nao_bolinho_primavera}"

# exemplo de uso da instrucao break
brinquedos_do_gatinho.each do |brinquedo|
  break if brinquedo[:material] == 'chenille'
  p brinquedo
end

