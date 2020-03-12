require 'pry'

class Artist
    attr_accessor :name    

    def initialize(name)
        @name = name        
    end

    def songs
        #binding.pry()
        Song.all.select{|x| x.artist == self}        
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        add_song(Song.new(song))        
    end

    def self.song_count
        Song.all.length
    end

end