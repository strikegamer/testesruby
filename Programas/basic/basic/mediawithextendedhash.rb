module Enumerable
  class Cursor
    EOE = Object.new # end of stream
    def EOE.to_s; 'END_OF_ENUM' end

    def initialize(iter)
      @iter = iter
      @cont = nil
    end

    def next
      callcc{|@cc|
	      @cont.call if @cont
	      @iter.call {|obj|
	        callcc{|@cont| @cc.call(obj) }
	      }
	      @cc.call(EOE)
      }
    end
  end
  
  def sum_with_index
    i = 0
    c = Cursor.new(self.method(:each))
    if iterator?
      return nil if (s = c.next) == Cursor::EOE
      s = yield(s,i)
      until (elm = c.next) == Cursor::EOE
	      s += yield(elm,i)
      end
      s
    else
      return nil if (s = c.next) == Cursor::EOE
      until (elm = c.next) == Cursor::EOE
	        s += elm
      end
      s
    end
  end

  def sum(&blk)
    if iterator?
      sum_with_index{|elm,i| yield(elm)}
    else
      sum_with_index{|elm,i| elm}
    end
  end

  def average(&blk)
    if iterator?
      sum_with_index{|elm,i| yield(elm)}/size.to_f
    else
      sum_with_index{|elm,i| elm}/size.to_f
    end    
  end
end

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
puts "A soma de todas as idades dos individuos que tem L no nome eh: #{nomesIdades.sum { |nome,idade| nome =~ /^L/ ? idade : 0 }}"
