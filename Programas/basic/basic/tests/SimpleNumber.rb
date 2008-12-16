class SimpleNumber
 
  def initialize( num )
    raise if !num.is_a?(Numeric)
    @x = num
  end
 
  def add( y )
    @x + y
  end
 
  def multiply( y )
    @x * y
  end
 
end