# faz overload no operador '+' do objeto fix num. Finalmente 2+2 eh igual a 'dois patinhos na lagoa'
class Fixnum
  def + (numero)
    if (self == 2) && (numero == 2)
      "dois patinhos na lagoa ..."
    else
      (self.to_s + numero.to_s).to_i
    end
  end
end