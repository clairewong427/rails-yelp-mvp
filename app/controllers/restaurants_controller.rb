class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new; end

  def create
    name = params['restaurant']['name']
    address = params['restaurant']['address']
    category = params['restaurant']['category']
    phone_number = params['restaurant']['phone number']
    new_resto = Restaurant.new(name: name, address: address, category: category, phone_number: phone_number)
    new_resto.save
  end

  def show
    @resto = Restaurant.find(params[:id])
  end
end
