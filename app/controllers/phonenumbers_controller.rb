class PhonenumbersController < ApplicationController
  def new
    @phonenumber = PhoneNumber.new
  end

  def create
    @phonenumber = PhoneNumber.create(params.require(:phone_number).permit(:phone_number, :comment, :person_id))
    redirect_to person_path(@phonenumber.person)
  end

  def destroy
    @phonenumber = PhoneNumber.find(params[:id])
    @person = @phonenumber.person
    @phonenumber.destroy
    redirect_to person_path(@person)
  end
end
