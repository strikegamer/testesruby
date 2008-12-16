#Comando para pegar o conteudo de uma pagina web
#require 'net/http'
# Net::HTTP.start( 'www.planobe.com.br', 80 ) do |http|
#     print( http.get( '/index.html' ).body )
# end

a=12
b = 10

revestreis = gets.reverse

puts revestreis

#hash malandro
lista_de_palhacadas = {'bunda' => ' faz merda', 'pinto' => 'mija hahahaha'}
#mostrando 1 item do hash na tela
#puts lista_de_palhacadas['bunda']
#loop no hash
lista_de_palhacadas.each do |cano|
	puts cano
end



#pergunta se a variavel esta nula...
puts a.nil?
	
	if a == b
		puts 'IGUAL'
	elsif a != b
		puts 'DIFERENTE'
	end
 
 
 #testes de IF
 copo = nil
if copo == true
    puts 'Copo cheio'
else
	puts 'Copo vazio' 	
end

unless copo
	puts 'Copo vazio 2'
end


#5.times do
#	puts "Teste de Puts 5 VEZES do livro"
#end