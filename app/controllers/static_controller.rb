class StaticController < ApplicationController


  before_action :require_current_user, except: [:landing]

  def landing
  end

  def questionnaire
  end

  def questionnaireEdit
    @pet = Pet.find(params[:pet_id])
    render "static/questionnaireEdit"
  end

  def dashboard
  end

  def pet_edit
  end

  def play
  end

  def play_edit
  end

  def medical
  end

  def medical_edit
  end


end
