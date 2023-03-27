class HerosController < ApplicationController
 #protect_from_forgery with: :null_session
 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 def index
     heroes = Hero.all
     render json: heroes
 end
 def show
    hero = Hero.find_by(id: params[:id])
    if hero 
      render json: hero, only: [:id, :name, :super_name], include: {powers: {only: [:id, :name, :description]} }
    else
      render json: {error: "Hero not found"}, status: 404
    end
 end
 private
 def render_not_found_response
 render json: { error: "Hero not found" }, status: :not_found
 end
end
