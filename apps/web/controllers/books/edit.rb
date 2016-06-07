module Web::Controllers::Books
  class Edit
    include Web::Action
      expose :book, :authors
    def call(params)

      @book = BookRepository.new.find(params[:id])
      @authors = {"1": "Best Author", "2": "Second Best Author"}
    end
  end
end
