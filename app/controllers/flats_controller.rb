class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create!(strong_params)
    redirect_to flat_path(@flat.id)
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def strong_params
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night)
  end

end
