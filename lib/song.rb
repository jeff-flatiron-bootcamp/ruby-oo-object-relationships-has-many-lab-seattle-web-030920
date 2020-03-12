class Song
    attr_accessor :artist, :name, :genre
    
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if(nil != artist)
            return artist.name
        end
        nil
    end
end