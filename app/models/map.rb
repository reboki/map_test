class Map < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def address
    [street, citys, state, country].compact.join(', ')
  end
end
