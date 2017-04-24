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
  @volume = params.fetch('volume')
  @volume = @volume.to_i
  @parcel = Parcels.new(@width, @length, @height, @volume)
  @price = @parcel.price()
  erb(:results)
end
