class PersonController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(params.require(:person).permit(:first_name, :last_name, :salutation, :middle_name, :ssn, :birthdate, :comment))
    if @person.valid?
      redirect_to controller: 'person', action: 'show', id: @person.id
    else
      flash[:errors] = @person.errors.full_messages
      redirect_to new_person_path
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update(params.require(:person).permit(:first_name, :last_name, :salutation, :middle_name, :ssn, :birthdate, :comment))
    redirect_to person_path(@person)
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to action: "index"
  end
end
