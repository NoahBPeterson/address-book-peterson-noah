class SessionsController < ApplicationController

    def login
        @user = User.find_by(username: params[:username])
        if !!@user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to controller: :person, action: :index
        end
    end

    def destroy
        @user = User.find_by(username: params[:username])
        if !!@user && @user.authenticate(params[:password])
            session[:user_id] = nil
            redirect_to login_path
        else
            message = "Something went wrong! Make sure your username and password were typed in correctly."
            redirect_to login_path, notice: message
        end
    end
end