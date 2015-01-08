require 'what3words'
class LocationService 
	
	def initialize
         @what3words = ::What3Words::API.new(:key => "KYNY25Q2")
    end

    def lookup_coords(lat,lon)

    	@what3words.position_to_words [lat,lon]

    end

    def lookup_words(words)

    	@what3words.words_to_position words
        
    end

end 