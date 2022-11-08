class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        self.hash_count @@genres
    end

    def self.artist_count
        self.hash_count @@artists
    end

    def self.hash_count arr
        hash = {}
        arr.uniq.each do |a|
            hash[a] = (arr.select {|aa| aa==a}).count
        end
        hash
    end

end
