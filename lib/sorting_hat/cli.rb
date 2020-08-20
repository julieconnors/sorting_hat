class SortingHat::CLI

    def call
      greet
      get_house_info
      get_user_values
      menu
    end
  
    def greet  
      puts "\nWelcome to Hogwarts!"
      puts "\nLet's figure out which house is for you."
    end

    def get_house_info
      SortingHat::API.new.get_houses
    end

    def menu
      sort_student
      menu_after_sort
      display_house_info
      ending
    end
 
    def get_user_values
      puts "\nPlease select the number for the quality that best describes you:\n"
      SortingHat::Houses.display_values.each.with_index(1) do |value, index|
        puts "#{index}. #{value}"
      end
      @input = gets.strip
    end

    def valid?
      @input.to_i > 0 && input.to_i < 17
    end
   
    def sort_student
      #if @input.to_i > 0 && @input.to_i < 17
        @value = SortingHat::Houses.find_value_by_input(@input)
        @house = SortingHat::Houses.find_by_value(@value)
        puts "\nIt better be #{@house.name}!"
      #else
        #get_user_values
      #end
    end

    def menu_after_sort
      puts "\nPlease select a number to find out more about #{@house.name} or exit:\n"
      puts "1. Head of House"
      puts "2. House colors"
      puts "3. House ghost"
      puts "4. Founder"
      puts "5. House mascot"
      puts "6. House members"
      puts "7. exit"
      @selection = gets.strip
    end

    def display_house_members
      SortingHat::API.new.get_characters
      SortingHat::Characters.find_by_house(@house.name)
    end

    def display_house_info
      case @selection.to_i
      when 1
        puts @house.head_of_house
      when 2
        puts @house.colors
      when 3
        puts @house.house_ghost
      when 4
        puts @house.founder
      when 5
        puts @house.mascot
      when 6 
        display_house_members
      when 7
        exit
      end
    end

    def ending
      puts "\nGood luck!"
    end

end