class SortingHat::API
 
  def get_houses
    url = 'https://www.potterapi.com/v1/houses?key=$2a$10$8pVxgJY1bNwi0sG..SoHvONSdckcCtdQLrOEOayFPSx02AlFBrNDi'
    response = HTTParty.get(url)
    response.each do |house_hash|
      house_hash
      SortingHat::Houses.new(house_hash)
    end
  end

  def get_characters
    url = 'https://www.potterapi.com/v1/characters?key=$2a$10$8pVxgJY1bNwi0sG..SoHvONSdckcCtdQLrOEOayFPSx02AlFBrNDi'
    response = HTTParty.get(url)
    response.each do |character_hash|
      character_hash
      SortingHat::Characters.new(character_hash)
    end
  end
end