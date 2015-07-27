class MedicalController < ApplicationController
  before_action :require_current_user, only: :create

  protect_from_forgery with: :null_session

  def edit
    @medical = Medical.find(params[:medical_id])
    render "static/medical-edit"
  end

  def new
    render "static/medical-new"
  end

  def show
    @pet = Pet.find(params[:pet_id])
    @medical = Medical.find_by(pet_id: params[:pet_id])
    render 'static/medical'
  end

  def update
    @medical = Medical.find(params[:medical_id])
    @medical.update(medical_params)
    @medical.save
    render 'static/medical'
  end

  def create
    @user = current_user
    @medical = Medical.new(medical_params)
    @medical.pet_id = params[:pet_id]

    if @medical.save
      redirect_to medical_path
    else
      flash[:message] = @medical.errors.full_messages.to_sentence
      redirect_to medical_path
    end

  end


  private

  def medical_params
    params.require(:medical).permit(:weight, :height, :gender, :microchip_id, :pshots_date, :pshots_name, :ushots_date, :ushots_name, :allergies, :r_vet_name, :r_vet_doctor, :r_vet_address, :r_vet_address_city, :r_vet_address_state, :r_vet_zip, :r_vet_phone, :e_vet_name, :e_vet_address, :e_vet_address_city, :e_vet_address_state, :e_vet_address_zip, :e_vet_phone, :e_contact_name, :e_contact_phone )
  end

end
