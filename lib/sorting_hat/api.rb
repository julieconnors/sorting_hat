require "httparty"
class SortingHat::API
 
        def get_characters
          url = 'https://www.potterapi.com/v1/characters?key=$2a$10$8pVxgJY1bNwi0sG..SoHvONSdckcCtdQLrOEOayFPSx02AlFBrNDi'
          response = HTTParty.get(url)
          response.each do |character_hash|
            character_hash["name"]
          end
        end
        
        def get_houses
          #binding.pry
          url = 'https://www.potterapi.com/v1/houses?key=$2a$10$8pVxgJY1bNwi0sG..SoHvONSdckcCtdQLrOEOayFPSx02AlFBrNDi'
          response = HTTParty.get(url)
          binding.pry
          response.each do |house_hash|
            #puts house_hash["name"]
            house_hash
          end
        end

        # def get_houses
        #   url = 'https://www.potterapi.com/v1/houses?key=$2a$10$8pVxgJY1bNwi0sG..SoHvONSdckcCtdQLrOEOayFPSx02AlFBrNDi'
        #   response = HTTParty.get(url)
        #   response.each do |house_hash|
        #     values = house_hash["value"]
        #     name = house_hash["name"]
        #     colors = house_hash["colors"]
        #     house_ghost = house_hash["houseGhost"]
        #     id = house_hash["_id"]
        #     founder = house_hash["founder"]
        #     mascot = house_hash["mascot"]
        #     binding.pry
        #   end
        # end

end