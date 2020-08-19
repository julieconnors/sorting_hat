class SortingHat::Characters
    attr_accessor :name, :role, :house

    @@all = []
    @@students = []

    def initialize(name, role, house)
        @name = name
        @role = role
        @house = house
        save
        add_student
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def add_student
        #binding.pry
        @@all.each do |character| 
            character.role == "student"
            @@students << character
        end
    end

    def self.find_by_house(house)
        #binding.pry
        @@students.select{|student| student.house == house}
    end




end