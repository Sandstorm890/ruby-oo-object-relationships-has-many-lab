require "pry" 
require_relative "./song.rb"

class Artist
    
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @songs = []
        
    end

    def add_song(song)
        # binding.pry
        song.artist = self.name
    end

    def songs
        
        Song.all.each do |s|
            songs_return = []
            songs_return << s.name == self
            # binding.pry
        end
        
    end

    def add_song(s)
        s.artist=(self)
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist=(self)
    end

    def self.song_count
        Song.all.length
    end

end