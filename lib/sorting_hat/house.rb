class SortingHat::Houses
        attr_accessor :name, :founder, :house_ghost, :values, :house_colors
        
        @@all = []
        
        def initialize(house_info)
          house_info.each do |trait, value|
            self.send("#{trait}=", value)
          end
          @@all << self
        end
        
        def self.all
          @@all
        end

end