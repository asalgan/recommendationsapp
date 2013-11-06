class RestaurantsController < ApplicationController


	def update
	    restaurant = Restaurant.find_by(id: params[:id])
	    restaurant.name = params[:name]
	    restaurant.cuisine = params[:cuisine]
	    restaurant.price = params[:price]
	    restaurant.save
	    redirect_to restaurants_url
    end

	def index
		@restaurant = Restaurant.all

		x = params[:sort]
		@restaurant = @restaurant.order(x)

		# if params.has_key?("sort")
		# 	has_name = params["sort"]
		# 	@restaurant = @restaurant.order(has_name)
		# end

		# if params.has_key?("sort")
		# 	@restaurant = @restaurant.order(params.has_value?("cuisine"))
		# end
	end

	def new
    end


    def create
		restaurant = Restaurant.new
		restaurant.name = params["name"]
		restaurant.location = params["location"]
		restaurant.price = params["price"]
		restaurant.cuisine = params["cuisine"]
		restaurant.save
		redirect_to restaurants_url
    end

    def show
		@restaurant = Restaurant.find_by(id: params[:id])
	end

	def destroy
	    restaurant = Restaurant.find_by(id: params[:id])
	    restaurant.destroy
	    redirect_to restaurants_url
  	end

end