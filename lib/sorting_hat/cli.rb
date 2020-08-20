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
      sort_student
      display_house_info
    end

    #add validity check
 
    def get_user_values
      puts "\nChoose a quality that best describes you:"
      SortingHat::Houses.display_values.each.with_index(1) do |value, index|
        puts "#{index}. #{value}"
      end
      @input = gets.strip
    end
   
    def sort_student
      @value = SortingHat::Houses.find_value_by_input(@input)
      @house = SortingHat::Houses.find_by_value(@value)
      puts "\nIt better be #{@house.name}!"
    end

    def display_house_info
      puts "\nFind out more about #{@house.name}:"
      list_info_menu
      display_info
    end

    def list_info_menu
      puts "1. Head of House"
      puts "2. House colors"
      puts "3. House ghost"
      puts "4. Founder"
      puts "5. House mascot"
      puts "6. House members"
      @info_selection = gets.strip
    end

    def display_house_members
      SortingHat::API.new.get_characters
      SortingHat::Characters.find_by_house(@house.name)
    end

    def display_info
      case @info_selection.to_i
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
      end
    end

end