class Artist

    attr_accessor :name, :song

    @@song_count = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        @songs << song
        song.artist = self
        @@song_count += 1
    end

    def add_song_by_name
        #stuck here - research over weekend
    end

end
