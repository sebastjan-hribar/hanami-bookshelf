module Web::Controllers::Books
  class Create
    include Web::Action

    def call(params)
      book = BookRepository.new.create(Book.new(params[:book]))
    end
  end
end
