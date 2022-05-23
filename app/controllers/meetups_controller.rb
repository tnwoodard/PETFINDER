class MeetupsController < ApplicationController
  protect_from_forgery except: [:show]

  def index
    @meetups = Meetup.all
  end

  def show
    @meetup = Meetup.find(params[:id])
  end

  def new
    @meetup = Meetup.new
  end

  def create
    @meetup = Meetup.new(meetup_params)
    @meetup.owner = current_user
    @meetup.custodian = current_user

    if @meetup.save!
      redirect_to meetup_path(@meetup), notice: "Pet was saved to the directory. Thank you!"
    else
      render :new
    end
  end

  private

  def meetup_params
    params.require(:meetup).permit(:pet_id)
  end
end
