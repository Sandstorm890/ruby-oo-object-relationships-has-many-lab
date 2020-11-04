require_relative "./author.rb"


class Post

    attr_accessor :title, :author
    attr_reader
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        
        
        
        author.name if author
        
    end


    # binding.pry
    
end