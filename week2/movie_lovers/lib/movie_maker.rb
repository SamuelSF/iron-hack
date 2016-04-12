require 'imdb'

class MovieMaker
    def get_movies(search_term)
        a = Imdb::Search.new(search_term).movies.shuffle
        b = []
        i = 0
        while (b.length < 9 && i < a.length)
            if a[i].poster != nil && a[i].director.length == 1
                b << a[i]
            end
            i += 1
        end
        b
    end
end