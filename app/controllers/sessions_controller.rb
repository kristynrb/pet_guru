class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by(email: user_params[:email])

    if @user && @user.authenticate(user_params[:password])
      login!(@user)
      redirect_to dashboard_path(@user)
    else
      flash[:message] = "Username or Password incorrect"
      redirect_to new_session_path
    end

  end

  def destroy
    logout!
    redirect_to root_path
  end
  

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
