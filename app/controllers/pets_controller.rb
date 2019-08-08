class PetController < ApplicationController
  def index
    @pets = Pets.all
  end
end
