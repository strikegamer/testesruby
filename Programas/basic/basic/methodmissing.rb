class Eliezer
  def WhoAmI
    puts "I'm Eliezer :)"
  end

  def Vender
    puts "Vendi + 1 Walk ..."
  end
  
  def method_missing (funcaoQueEstouPassando)
    print funcaoQueEstouPassando
    self
  end
end
