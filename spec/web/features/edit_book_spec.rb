require 'features_helper'

describe 'Check book before update' do


  before do
      BookRepository.new.clear

      @book = BookRepository.new.create(Book.new(title: 'PoEAA', author: 'Second Best Author'))
    end



  it 'checks book data' do

    @book.id.wont_be_nil
    visit "/books/#{@book.id}/edit"
    current_path.must_equal("/books/#{@book.id}/edit")
    assert page.has_content?("Second Best Author"), "The page must have content Second Best Author."

  end

end
