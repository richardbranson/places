class VenuesController < ApplicationController
	layout 'application'	
	def index

		@venues = Venue.all
# example:

	end

	def new

	end

	def create
		venue = Venue.new
		venue.name = params[:name]
		venue.description = params[:description]
		venue.lat = params[:lat]
		venue.lon = params[:lon]
		words = LocationService.new.lookup_coords(venue.lat, venue.lon)
		venue.words = words.join('.')
		venue.save
		redirect_to('/venues')
	end
end
