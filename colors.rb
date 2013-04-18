class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end
    
  def brightness_index
    r1 = @r
    g1 = @g 
    b1 = @b

    bi = ( 299*r1 + 587*g1 + 114*b1) / 1000
    return bi
  end

  def brightness_difference(another_color)
   bd = self.brightness_index - another_color.brightness_index
    return bd.abs 
  end

  def hue_difference(another_color)
    rhue = (self.r - another_color.r).abs
    ghue = (self.g - another_color.g).abs
    bhue = (self.b - another_color.b).abs
    huedif = rhue + ghue + bhue
    return huedif
  end

  def enough_contrast?(another_color)
   if self.brightness_difference(another_color) > 125 && 
    self.hue_difference(another_color) > 500
    return true
  else 
    return false
  end
  end
end
  color1 = Color.new(100,112,165)
  color2 = Color.new(102,543,531)
  #color1.brightness_index
  #color2.brightness_index
  #color1.brightness_difference(color2)
  #color1.hue_difference(color2)
  color1.enough_contrast?(color2)

