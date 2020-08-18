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
          url = 'https://www.potterapi.com/v1/houses?key=$2a$10$8pVxgJY1bNwi0sG..SoHvONSdckcCtdQLrOEOayFPSx02AlFBrNDi'
          response = HTTParty.get(url)
          response.each do |house_hash|
            #create hash with key value pairs for variables
            id = house_hash["_id"]
            name = house_hash["name"]
            mascot = house_hash["mascot"]
            head_of_house = house_hash["headOfHouse"]
            house_ghost = house_hash["houseGhost"]
            founder = house_hash["founder"]
            values = house_hash["values"]
            colors = house_hash["colors"]
            SortingHat::Houses.new(id, name, mascot, head_of_house, house_ghost, founder, values, colors)
          end
        end
# metaprogramming version
        # def get_houses
        #   url = 'https://www.potterapi.com/v1/houses?key=$2a$10$8pVxgJY1bNwi0sG..SoHvONSdckcCtdQLrOEOayFPSx02AlFBrNDi'
        #   response = HTTParty.get(url)
        #   response.each do |house_hash|
        #     house_hash
        #   SortingHat::Houses.new(house_hash)
        #   end
        # end

end