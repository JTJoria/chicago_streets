class Api::V1::EnemiesController < ApplicationController
  def index
    @enemies = Enemy.all
  end

  def create
    @enemy = Enemy.create(first_name: params[:first_name], last_name: params[:last_name], book: params[:book], color: params[:color])

    render :show
  end

  def show
    @enemy = Enemy.find(params[:id])
  end

  def update
    @enemy = Enemy.find(params[:id])
      @enemy.update({first_name: params[:first_name] || @enemy.first_name,last_name: params[:last_name] || @enemy.last_name,
        book: params[:book] || @enemy.book, 
        color: params[:color] || @enemy.color})

    render :show
  end

  def destroy
    @enemy = Enemy.find_by(id: params[:id])
    @enemy.destroy

    render json: {message: "Enemy Destroyed!"}

    # redirect_to "/enemies"
  end
end
