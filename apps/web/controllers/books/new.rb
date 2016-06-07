module Web::Controllers::Books
  class New
    include Web::Action

    expose :authors

    def call(params)
      @authors = {1 => "Best Author", 2 => "Second Best Author"}
    end
  end
end
