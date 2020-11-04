require "pry" 
require_relative "./artist.rb"

class Song

    attr_accessor :name, :artist
    attr_reader 

    @@all = []
    

    def initialize(name)
        @name = name
        @@all << self
        # binding.pry
        
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist
    end

    
end