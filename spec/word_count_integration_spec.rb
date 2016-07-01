require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('processes user entry and returns how many times the first input appears in the second input') do
    visit('/')
    fill_in('initial_word', :with => 'peck')
    fill_in('word_list', :with => 'If Peter Piper picked a peck of pickled peppers, wheres the peck of pickled peppers Peter Piper picked?')
    click_button('Find')
    expect(page).to have_content("Your initial word \"peck\" apppeared 2 times")
  end
end
