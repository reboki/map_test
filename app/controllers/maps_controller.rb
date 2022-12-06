class MapsController < ApplicationController
  def index
    map = Map.all
    
    @maps = Map.near('新宿', 0.6, :units => :km)
  end
end
