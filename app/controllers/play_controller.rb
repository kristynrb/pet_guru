class PlayController < ApplicationController
  before_action :require_current_user, only: :create

  protect_from_forgery with: :null_session

  def edit
    @play = Play.find(params[:play_id])
    render "static/play-edit"
  end

  def new
    render "static/play-new"
  end

  def show
    @pet = Pet.find(params[:pet_id])
    @play = Play.find_by(pet_id: params[:pet_id])
    render 'static/play'
  end

  def update
    @play = Play.find(params[:play_id])
    @play.update(play_params)
    @play.save
    render 'static/play'
  end

  def create
    @user = current_user
    @play = Play.new(play_params)
    @play.pet_id = params[:pet_id]

    if @play.save
      redirect_to play_path
    else
      flash[:message] = @play.errors.full_messages.to_sentence
      redirect_to play_path
    end

  end

  private

  def play_params
    params.require(:play).permit(:toy, :park, :games, :habits, :additional_details)
  end

end
