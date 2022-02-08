# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
#    fill_in 'Author', with: 'j k. rowling'
#    fill_in 'Price', with: '10'
#    fill_in 'PublishedDate', with: '1/1/2000'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
#    expect(page).to have_content('j k. rowling')
#    expect(page).to have_content('10')
#    expect(page).to have_content('1/1/2000')
  end
end



