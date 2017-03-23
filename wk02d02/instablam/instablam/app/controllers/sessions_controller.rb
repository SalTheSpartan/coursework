class SessionsController < ApplicationController

  skip_before_action :require_login, only: [:new , :create]

  def new


    @message = session[:message]

    render :login
  end

  def create
    #get email and password from the request
    email = session_params[:email]
    password = session_params[:password]

    #check to see if there is a user with the given email and password

    user = User.find_by ({email: email , password: password})

    if user
      # log the user in
      session[:user_id] = user.id
      redirect_to :pictures
    else
      # incorrect information
      session[:message] = "Incorrect login"
      redirect_to new_sessions_path
    end
  end

  def destroy

    session[:user_id] = false

    redirect_to new_sessions_path
  end

  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
