class UsersController < ApplicationController
  before_action :fetch_user, only: :show



  def new
  end


  def show
    respond_to do |format|
      format.html
      format.json { render json: @user.to_json(include: :pets) }
    end
  end


  def create
    @user = User.new(user_params)
    @thisUser = User.find_by(email: user_params[:email])

    if @user.save
      login!(@user)
      redirect_to questionnaire_path(@thisUser)
    else
      flash[:message] = @user.errors.full_messages.to_sentence
      redirect_to new_user_path
    end

  end



  private

  def fetch_user
    @user = User.includes(:pets).find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
