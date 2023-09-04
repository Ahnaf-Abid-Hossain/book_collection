require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    subject.title = "peepsqueak"
    published_date = Date.new(2003, 3, 24)
    subject.author = "miley"
    subject.price = "30"
    subject.published_date = published_date.strftime('%Y-%m-%d')
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end
