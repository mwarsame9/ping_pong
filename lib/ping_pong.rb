class Fixnum
  define_method(:ping_pong) do
    numbers_output = []
    (1..self).each do |x|
      if x.%(15).==(0)
        numbers_output.push('pingpong')
      elsif x.%(3).==(0)
        numbers_output.push('ping')
      elsif x.%(5).==(0)
        numbers_output.push('pong')
      else
        numbers_output.push(x)
      end
    end
    numbers_output
  end
end
