class AddressesController < ApplicationController

  def new
    @address = Address.new
  end

  def create
    @address = Address.create(params.require(:address).permit(:street, :town, :zip_code, :state, :country, :person_id))
    redirect_to person_path(@address.person)
  end

  def destroy
    @address = Address.find(params[:id])
    @person = @address.person
    @address.destroy
    redirect_to person_path(@person)
  end
end
