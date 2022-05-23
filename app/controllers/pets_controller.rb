class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.owner = current_user
    @pet.custodian = current_user

    if @pet.save!
      redirect_to profile_path, notice: "Pet was saved to the directory. Thank you!"
    else
      render :new
    end

  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pet_path(current_user), notice: "The pet was removed from the directory."
  end

  private

  def pet_params
    params.require(:pet).permit(:species, :name, :age, :color, :location, :description, :date_found, :has_id, :status, :sex, :latitude, :longitude, :owner_id, :custodian_id, :photo)
  end
end
