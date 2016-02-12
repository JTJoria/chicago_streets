class StreetsController < ApplicationController
  def index
    @streets = Unirest.get("https://data.cityofchicago.org/resource/i6bp-fvbx.json").body
  end
end
