class PersonController < ApplicationController

  def index
    if !helpers.logged_in?
      redirect_to login_path
    end
    @people = Person.where(user: helpers.current_user)
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(params.require(:person).permit(:first_name, :last_name, :salutation, :middle_name, :ssn, :birthdate, :comment, :user_id))
    if @person.valid? && @person.user_id == helpers.current_user.id
      redirect_to controller: 'person', action: 'show', id: @person.id
    else
      flash[:errors] = @person.errors.full_messages
      redirect_to new_person_path
    end
  end

  def show
    if Person.find(params[:id]).user_id == helpers.current_user.id
      @person = Person.find(params[:id])
    else
      redirect_to action: "index"
    end
  end

  def edit
    if Person.find(params[:id]).user_id == helpers.current_user.id
      @person = Person.find(params[:id])
    else
      redirect_to action: "index"
    end
  end

  def update
    if Person.find(params[:id]).user_id == helpers.current_user.id
      @person = Person.find(params[:id])
      @person.update(params.require(:person).permit(:first_name, :last_name, :salutation, :middle_name, :ssn, :birthdate, :comment, :user_id))
      redirect_to person_path(@person)
    else
      redirect_to action: "index"
    end
  end

  def destroy
    if Person.find(params[:id]).user_id == helpers.current_user.id
      @person = Person.find(params[:id])
      @person.destroy
    end
    redirect_to action: "index"
  end
end
