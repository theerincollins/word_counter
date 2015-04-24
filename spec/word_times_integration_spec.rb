require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word count path', {:type => :feature}) do

  it ('processes a one word string and a multiple words string from user and returns
  the frequency of the one word string within the multiple word string') do
    visit('/')
    fill_in('test_word', :with => 'shrimp')
    fill_in('input_string', :with => 'grilled shrimp, fried shrimp, siracha shrimp')
    click_button('Count!')
    expect(page).to have_content(3)
  end

end
