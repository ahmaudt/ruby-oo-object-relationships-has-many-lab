require_relative './author.rb'
class Post
    attr_accessor :title, :author, :name

    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        post_author  = nil
        if self.author == nil
            post_author
        else
            post_author = self.author.name
        end
    end
    
end