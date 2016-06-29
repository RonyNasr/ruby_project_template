# This is the Integration test page
# It contains a sample of the tests you need to run

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('a general description of the feture',{:type => :feature}) do
  it ("describe the behavior you are expecting here") do
    visit ('page_name (use "\" for root page)')
    fill_in('input_element' , :with => "value") # fill the form input elements
    click_button('button') # to submit the form
    expect(page).to have_content ("expected_result") # check results
  end
end
