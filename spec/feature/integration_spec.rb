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
    visit books_path
    #puts page.body
    expect(page).to have_content('Book was successfully created.')
  end

  scenario 'invalid inputs' do
    visit new_book_path

    fill_in "book[title]", with: ''
    click_on 'Create Book'
    visit new_book_path

    expect(page).to have_content('')
  end


# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in "book[title]", with: 'harry'
#     click_on 'Create Book'
#     visit "http://localhost:3000/books"

#     expect(page).to have_content('Book was successfully created.',wait: 5)
#   end

#   scenario 'invalid inputs' do
#     visit new_book_path

#     fill_in "book[title]", with: ''
#     click_on 'Create Book'
#     visit new_book_path

#     message = page.find("#title").native.attribute("validationMessage")
#     expect(message).to eq "Input Title"
#     expect(current_path).to eq edit_link_path(user.links.first)
    
#     expect(page).to have_content('Input Title',wait: 5)
#   end

# RSpec.describe BooksController, type: :controller do
#   describe 'PUT #update' do
#     let(:book) { create(:book) } # Assuming you have a FactoryGirl (or FactoryBot) factory for books

#     context 'with valid book parameters' do
#       it 'redirects to the books index page with a success notice' do
#         put :update, params: { id: book.id, book: { title: 'New Title' } }
#         expect(response).to redirect_to(books_path)
#         expect(flash[:notice]).to eq('Book was successfully updated.')
#       end
#     end


# RSpec.describe 'Creating a book', type: :feature do
#     scenario 'valid inputs' do
#       include RSpec::Rails::BookCollection
#       # visit new_book_path
#       # @controller.instance_eval { flash.extend(DisableFlashSweeping) }
#       # fill_in "book[title]", with: 'harry'
#       # click_on 'Create Book'
#       # visit "http://localhost:3000/books"
  
#       # expect(page).to have_content('Book was successfully created.',wait: 5)
#       post "/books", title: "email"      
#       expect(response).to redirect_to(books_path)
#       expect(flash[:notice]).to be_present
#     end


end