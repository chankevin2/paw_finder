class Api::V1::PetsController < ApplicationController

  def index
    @pets = Pet.all


    @pets = PetsHelper.get_pets(pet_params)

    # use geokit or geocoder to determine the lat and long of the current IP
    # make request to petfinder for auth
    # make request to petfinder for all shelters nearby (and add in your lat and long)
    # this info will then be consumed by Google Maps on the frontend

    render json: @pets
  end

  # def show
  #
  #   render json: Pet.find(params[:id])
  # end
  # def create
  #   @pets = Pet.new(pet_params)
  # end
  #
  # def update
  #   @pet.update(params.permit(:name, :animal, :breed))
  # end

  private

  def pet_params
    params.permit(:name, :animal, :breed, :page, :type, :age)
  end

  # def find_pet
  #   @pet = Pet.find(params[:id])
  # end
end

# get that token in a response from the aPI
# store the token in a session hash
# session[:petfinder_info] = response.access_token
