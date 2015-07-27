class PetsController < ApplicationController
  before_action :require_current_user, only: :create
  before_action :redirect_unless_logged_in

  protect_from_forgery with: :null_session


  def index

  end

  def create
    @user = current_user

    @pet = @user.pets.new(pet_params)

    if @pet.save
      redirect_to dashboard_path
    else
      flash[:message] = @pet.errors.full_messages.to_sentence
      redirect_to dashboard_path

    end

  end

  def edit
    @pet = Pet.find(params[:id])
    render "static/pet-edit"
  end

  def show
    @pet = Pet.find(params[:pet_id])
    redirect_to 'static/dashboard'
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    @pet.save
    render 'static/dashboard'
  end

  def redirect_unless_logged_in
    @current_user = current_user

    redirect_to new_session_path unless @current_user
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :breed, :color, :birthday, :would_say, :avatar)
  end



end
