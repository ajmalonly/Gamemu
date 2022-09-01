class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @games = Game.where("game_name ILIKE ?", "%#{params[:query]}%")
    else
      @games = Game.all
    end
  end
end
