class SortingHat::Characters
  attr_accessor :name, :house

  @@all = []

  def initialize(characters_hash)
    character_hash.each do |attribute_key, attribute_value|
      self.send("#{attribute_key}=", attribute_value) if self.respond_to?(attribute_key)
    end
    save
    add_character
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_character
    SortingHat::Houses.characters << self if !SortingHat::Houses.characters.include?(self)
  end

  def self.find_by_house(user_house)
    SortingHat::Houses.characters.select do |character| 
      if character.house == user_house
        puts character.name
      end
    end
  end
end