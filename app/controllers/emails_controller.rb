class EmailsController < ApplicationController

  def new
    @email = Email.new
  end

  def create
    @email = Email.create(params.require(:email).permit(:email_address, :comment, :person_id))
    redirect_to person_path(@email.person)
  end

  def destroy
    @email = Email.find(params[:id])
    @person = @email.person
    @email.destroy
    redirect_to person_path(@person)
  end
end
