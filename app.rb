require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/results') do
  @width = params.fetch('width')
  @width = @width.to_i
  @length = params.fetch('length')
  @length = @length.to_i
  @height = params.fetch('height')
  @height = @height.to_i
  @weight = params.fetch('weight')
  @weight = @weight.to_i
  @parcel = Parcels.new(@width, @length, @height, @weight)
  @volume = @parcel.volume()
  @price = @parcel.price()
  @parcel.discount()
  @price = @parcel.price()

  # if params.fetch('giftwrap')
  # @price = @parcel.giftwrap()
  # end
  erb(:results)
end
