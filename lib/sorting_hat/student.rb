class SortingHat::Characters
    attr_accessor :name, :role, :house

    @@all = []
    @@students = []

    def initialize(name, role, house)
        @name = name
        @role = role
        @house = house
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.find_students(role)
        @@all.detect do |character| 
            character.role == student
            @@students << character
        end
    end

    def self.find_by_house(house)
        @@students.detect{|student| student.house == house}
    end


end