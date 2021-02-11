
class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def artist_name
        song_artist_name = nil
        if self.artist == nil
            song_artist_name
        else
            song_artist_name = self.artist.name
        end
        song_artist_name
    end
end

