class DishesController < ApplicationController
    
    
    
    def index
        @dishes = Dish.all
    end

    def new
        @dish = Dish.new
    end

    def create
        dish = Dish.new
	    dish.name = params[:dish][:name]
	    dish.description = params[:dish][:description]
	    dish.picture = params[:dish][:picture]
	    dish.price = params[:dish][:price]
	    dish.save
	    redirect_to dishes_path

    end

    def edit
        @dish = Dish.find(params[:id])
    end

    def update
        dish = Dish.find(params[:id])
        dish.name = params[:dish][:name]
        dish.description = params[:dish][:description]
        dish.picture = params[:dish][:picture]
        dish.price = params[:dish][:price]
        dish.save
        redirect_to dishes_path
    end

    #def delete
 #       dish = Dish.find(params[:id])
 #   end

end
