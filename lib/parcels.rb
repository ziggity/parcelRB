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
    @price = @volume * 20 + @weight
    @price
  end

  define_method(:discount) do
    if @volume.>= (2000)
      @price = @price.-(1000)
      @price
    end
  end

  define_method(:giftwrap) do
    surfacearea = 2*(@width.*(@length)) + 2*(@width.*(@height)) + 2*(@length.*(@height))
    @surfacearea = surfacearea
    @price = @surfacearea.*(1.05)
    @price
  end
end
