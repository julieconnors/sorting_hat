class SortingHat::CLI
  
    def greet  
        puts "\nWelcome to Hogwarts!"
        puts "\nWhat's your name?"
        name_input = gets.strip
      if name_input == "Harry Potter"
        puts "\nThe famous Harry Potter! Let's get you sorted."
      else
        puts "\nNice to meet you, #{name_input}! Let's figure out which house is for you."
      end
      SortingHat::API.new.get_houses
      menu
    end

    def menu
      get_user_values
      #sort_student
      #display_house_info
    end
 
    def get_user_values
      puts "Choose a quality that best describes you:"
      SortingHat::Houses.display_values.each.with_index(1) do |value, index|
        puts "#{index}. #{value}"
      end
      @input = gets.strip
      if @input == 1 || @input == 2 || @input == 3 || @input == 4
        puts "It better be Gryffindor!"
      elsif @input == 5 || @input == 6 || @input == 7 || @input == 8
        puts "It better be Ravenclaw!"
      elsif @input == 9 || @input == 10 || @input == 11 || @input == 12
        puts "It better be Slytherin!"
      else
        puts "It better be Hufflepuff!"
      end
    end
   
    #def sort_student
      #house = SortingHat::Houses.find_by_value(@input)
    #end

    def display_house_info
      puts "Find out more about #{@house}:"
      list_attr_menu
      display_attr
    end

    def list_attr_menu
      puts "1. colors"
      puts "2. house ghost"
      puts "3. founder"
      puts "4. mascot"
      @house_attr_selection = gets.strip
    end

    def display_attr
      case @house_attr_selection
      when "1"
        puts @house.colors
      when "2"
        puts @house.house_ghost
      when "3"
        puts @house.founder
      when "4"
        puts @house.mascot
      end
    end
   
#provide a list of students belonging to the house?

end