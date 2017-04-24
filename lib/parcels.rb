class Parcels
  define_method(:initialize) do |width, length, height, weight|
    @width = width
    @length = length
    @height = height
    @weight = weight
  end

  define_method(:volume) do
    @volume =  @width * @length * @height
  end

  define_method(:price) do
    @volume =  @width * @length * @height
    @price = @volume * 3 + @weight
    @price
  end

end
