class Author

    attr_accessor :name
    def initialize(name)
        @name = name
        
    end

    def posts
        Post.posts.select{|x| x.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        add_post(Post.new(title))
    end

    def self.post_count
        Post.posts.count
    end    
end