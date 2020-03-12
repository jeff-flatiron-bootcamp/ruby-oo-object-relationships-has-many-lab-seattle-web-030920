class Post
    attr_accessor :title, :author
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if(nil != author)
            return author.name
        end
        nil
    end

    def self.posts
        @@all
    end

    
end