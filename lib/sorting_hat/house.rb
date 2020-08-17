class SortingHat::Houses
    attr_accessor :values, :name, :colors, :house_ghost, :id, :founder, :mascot
    
    @@all = []
    @@values
    
    def initialize(values, name, colors, house_ghost, id, founder, mascot)
      @values = values
      @name = name
      @colors = colors
      @house_ghost = house_ghost
      @id = id
      @founder = founder
      @mascot = mascot
      save
      @@values << values
    end
    
    def self.all
      @@all
    end
    
    def save
      @@all << self
    end
    
    def self.display_values
      @@values
    end
    
    def self.find_by_name(name)
      @@all.detect{|house| house.name == name}
    end
    
  end