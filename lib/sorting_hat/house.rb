class SortingHat::Houses
    attr_accessor :name, :mascot, :head_of_house, :house_ghost, :founder, :values, :colors, :characters
    
    @@all = []
    @@all_values = []
    @@characters = []
    
    def initialize(attributes)
      attributes.each do |key, value|
        self.send("#{key}=", value) if self.respond_to?(key)
      end
      save
    end
    
    def self.all
      @@all
    end

    def self.characters
      @@characters
    end
    
    def save
      @@all << self
      @@all_values << @values
    end
    
    def self.display_values
      @@all_values.flatten
    end
    
    def self.find_by_name(name)
      @@all.detect{|house| house.name == name}
    end
    
    def self.find_by_value(value)
      @@all.detect{|house| house.values.include?(value)}
    end

    def self.find_value_by_input(input)
      @@all_values.flatten[input - 1]
    end

  end