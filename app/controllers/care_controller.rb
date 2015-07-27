class CareController < ApplicationController
  before_action :require_current_user, only: :create

  protect_from_forgery with: :null_session

  def edit
    @care = Care.find(params[:care_id])
    render "static/care-edit"
  end

  def new
    render "static/care-new"
  end

  def show
    @pet = Pet.find(params[:pet_id])
    @care = Care.find_by(pet_id: params[:pet_id])
    render 'static/care'
  end

  def update
    @care = Care.find(params[:care_id])
    @care.update(care_params)
    @care.save
    render 'static/care'
  end

  def create
    @user = current_user
    @care = Care.new(care_params)
    @care.pet_id = params[:pet_id]

    if @care.save
      redirect_to care_path
    else
      flash[:message] = @care.errors.full_messages.to_sentence
      redirect_to care_path
    end

  end

  def care
  end

  def grab_pet
    @pet = Pet.find(params[:id])
  end

  private

  def care_params
    params.require(:care).permit(:food_amount_dry, :food_frequency_dry, :food_amount_wet, :food_frequency_wet, :treats, :walk_frequency, :walk_length, :walks_leash, :command_name, :command_description, :grooming, :additional_details, :special_needs, :fears )
  end

end
