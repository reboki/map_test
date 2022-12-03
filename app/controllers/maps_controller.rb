class MapsController < ApplicationController
  def index
    map = Map.all
    @maps = Map.near(Map.address, 0.6, :units => :km)
  end
end
