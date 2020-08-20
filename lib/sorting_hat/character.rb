class SortingHat::Characters
    attr_accessor :name, :house

    @@all = []

    def initialize(name, house)
        @name = name
        @house = house
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

    def self.find_by_house(house_arg)
        SortingHat::Houses.characters.select do |character| 
            if character.house == house_arg
                puts character.name
        end
      end
    end

end