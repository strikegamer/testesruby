# wtf trick
require 'crazyfixnum'

# simple teste framework
# extende a classe objeto que e comum a todos os outros objetos criando um teste no estilo 'should_equal'
class Object
  # retorna true se o valor do objeto eh igual a valor que esta sendo passado
	def deveria_ser_igual_a (valor)
	  self == valor
	end
	
	def clear
	  system('clear')
	end
end

def test_add
  (3 + 4).deveria_ser_igual_a 34
end

puts "Meu teste eh: #{test_add}"
