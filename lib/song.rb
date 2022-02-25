class Song
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_count = Hash.new
        @@artists.each do |artist|
        if artist_count[artist]
            artist_count[artist] += 1 
        else
            artist_count[artist] = 1
        end
    end
    artist_count
    end

    def self.genre_count
        genre_count = Hash.new
        @@genres.tally
        # @@genres.each do |genre|
        #     if genre_count[genre]
        #         genre_count[genre] += 1 
        #     else
        #         genre_count[genre] = 1
        #     end
        # end
        # genre_count
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
jay = Song.new("Lucifer", "Jay-Z", "rap")
puts ninety_nine_problems.name
puts Song.genre_count