class SortingHat::Houses
  attr_accessor :name, :mascot, :headOfHouse, :houseGhost, :founder, :values, :colors, :characters
    
  @@all = []
  @@all_house_values = []
  @@characters = []
    
  def initialize(house_hash)
    house_hash.each do |attribute_key, attribute_value|
      self.send("#{attribute_key}=", attribute_value) if self.respond_to?(attribute_key)
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
    @@all_house_values << @values
  end
    
  def self.display_values
    @@all_house_values.flatten
  end
    
  def self.find_by_name(name)
    @@all.detect{|house| house.name == name}
  end
    
  def self.find_by_value(value)
    @@all.detect{|house| house.values.include?(value)}
  end

  def self.find_value_by_input(input)
    @@all_house_values.flatten[input - 1]
  end
end