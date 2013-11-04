class MoviesController < ApplicationController
	def update
	    movie = Movie.find_by(id: params[:id])
	    movie.name = params[:name]
	    movie.cuisine = params[:genre]
	    movie.save
	    redirect_to movies_url
    end

	def index
		@movie = Movie.all
	end

	def new
    end


    def create
		movie = Movie.new
		movie.name = params["name"]
		movie.genre = params["genre"]
		movie.save
		redirect_to movies_url
    end

    def show
		@movie = Movie.find_by(id: params[:id])
	end

	def destroy
	    movie = Movie.find_by(id: params[:id])
	    movie.destroy
	    redirect_to movies_url
  	end
end