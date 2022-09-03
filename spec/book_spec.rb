require './book'
require './student'

describe Book do
  before :each do
    @book = Book.new('The war', 'Carson')
  end
  context 'book with correct details' do
    it 'book should have title: The war, author: Carson' do
      expect(@book.title).to eq('The war')
      expect(@book.author).to eq('Carson')
      expect(@book.rentals).to eq []
    end
  end
end
