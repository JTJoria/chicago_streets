class EnemiesController < ApplicationController
  def index
    @enemies = Enemy.all
  end

  def new
    @enemy = Enemy.new(Unirest.get("http://localhost:3000/enemies/#{params[:id]}.json").body)
  end

  def create
    @enemy = Unirest.post("http://localhost:3000/api/v1/enemies", headers:{ "Accept" => "application/json" }, parameters: {first_name: params[:first_name], last_name: params[:last_name], book: params[:book] }).body

    render :show
  end

  def show
    @enemy = Enemy.find(params[:id])
  end

  def edit
    @enemy = Unirest.get("http://localhost:3000/api/v1/enemies/#{params[:id]}.json").body
  end

  def update
    @enemy = Unirest.get("http://localhost:3000/api/v1/enemies/#{params[:id]}.json").body
  end

  def destroy
    @enemy = Enemy.find(params[:id])
    message = @enemy.destory

    flash[:message] = message["message"]
    redirect_to "/enemies"
  end
end
