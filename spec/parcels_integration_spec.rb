require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('parcel calculator', {:type=>:feature}) do
  it('calculates user input parcel price, and volume') do
    visit('/')
    fill_in('length', :with => 10)
    fill_in('width', :with => 34)
    fill_in('height', :with => 34)
    click_button('Parcelamatic go!')
    expect(page).to have_content('Your parcel length is: 10 Your parcel width is: 34 Your parcel volume is: 11560 And your total cost is: 34680')
  end
end
