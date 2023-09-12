require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter' , author: 'peesss', price: "90" , published_date: Date.new(2003, 3, 24).strftime('%Y-%m-%d'))
  end

  

  it 'is valid with valid title' do
    subject.title = "peepsqueak"
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is valid with valid author' do
    subject.author = "peesss"
    expect(subject).to be_valid
  end

  it 'is not valid without a author name' do
    subject.author= nil
    expect(subject).not_to be_valid
  end

  it 'is valid with valid price' do
    subject.price = "90"
    expect(subject).to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end



  it 'is valid with valid date' do
    published_date = Date.new(2003, 3, 24)
    subject.published_date =  published_date.strftime('%Y-%m-%d')
    expect(subject).to be_valid
  end

  it 'is not valid without a date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end

  
end
