class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@genres=[]
    @@artists=[]

    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        
        @@count +=1
        @@genres << self.genre.downcase
        @@artists << self.artist
    end
    def self.count
        @@count
    end

    def self.genres
        genres=[]
        @@genres.each do |genre| 
            genres << genre if !genres.include?(genre)
        end
        genres
    end

    def self.artists
        artists=[]
        @@artists.each do |artist| 
            artists << artist if !artists.include?(artist)
        end
        artists
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end
