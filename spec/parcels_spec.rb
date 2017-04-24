require('rspec')
require('./lib/parcels.rb')

describe(Parcels) do
  describe('#volume') do
    it('returns volume') do
      new_parcels = Parcels.new(10,34,34,34)
      expect(new_parcels.volume()).to(eq(11560))
    end
  end
  describe('#price') do
    it('returns price')do
      new_parcels = Parcels.new(10,34,34,34)
      expect(new_parcels.price()).to(eq(34714))
    end
  end
end
