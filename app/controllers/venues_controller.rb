class VenuesController < ApplicationController

	def index

		@venues = Venue.all
# example:


	end

	def new

	end

	def create

		venue = Venue.new
		words = LocationService.new.lookup_coords(venue.lat, venue.lon)
		venue.words = words.join('.')
		
		redirect_to('venues/new')

	end
end
