class SortingHat::Houses
    attr_accessor :values, :name, :colors, :house_ghost, :founder, :mascot, :head_of_house
    
    @@all = []
    @@values = []
    
    def initialize(name, mascot, head_of_house, house_ghost, founder, values, colors)
      @name = name
      @mascot = mascot
      @house_ghost = house_ghost
      @head_of_house = head_of_house
      @founder = founder
      @values = values
      @colors = colors
      save
    end

    # metaprogramming version
    # def initialize(attributes)
    #   binding.pry
    #   attributes.each do |key, value|
    #     self.send("#{key}=", value) if self.respond_to?(key)
    #   end
    # end
    
    def self.all
      @@all
    end
    
    def save
      @@all << self
      @@values << @values
    end
    
    def self.display_values
      @@values.flatten
    end
    
    def self.find_by_name(name)
      @@all.detect{|house| house.name == name}
    end
    
    def self.find_by_value(value)
      @@all.detect{|house| house.values.include?(value)}
    end

    def self.find_value_by_input(input)
      @@values.flatten[input.to_i - 1]
    end

    # def self.display_attributes
    #   @@all.detect{}
    # end

  end