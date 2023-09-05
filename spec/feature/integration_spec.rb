require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    #puts page.body
    published_date = Date.new(2003, 3, 24)

    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'miley'
    fill_in "book[price]", with: '30'
    fill_in "book[published_date]", with: published_date.strftime('%Y-%m-%d')
    click_on 'Create Book'
    visit "http://localhost:3000/books"
    #puts page.body
    expect(page).to have_content('harry potter')
  end
end