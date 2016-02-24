class EnemiesController < ApplicationController
  def show
    @enemies = Enemy.find(params[:id])
  end
end