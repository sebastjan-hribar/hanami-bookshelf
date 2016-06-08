require 'features_helper'

describe 'Check the content of new template page' do


  it 'checks template page data' do
    visit "/books/new"
    current_path.must_equal("/books/new")
    assert page.has_content?("Select an author"), "The page must have content Select an author."

  end

end
