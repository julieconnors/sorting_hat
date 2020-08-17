class SortingHat::Cli
  
    def greet  
        puts "\nWelcome to Hogwarts!"
        puts "\nWhat's your name?"
        name_input = gets.strip
      if name_input == "Harry Potter"
        puts "\nThe famous Harry Potter! Let's get you sorted."
      else
        puts "\nNice to meet you, #{name_input}! Let's figure out which house is for you."
      end
      
    end
#We want to display a list of values for all houses and have the user select a value 
    def get_user_values
      puts "Choose a quality that best describes you:"
      #display values from House class
      input = gets.strip
      #find_by_value
      #display house object
    end
#based on the value selection the user will be placed in the House that the value belongs to
#we will display the House object with all attributes with a message "Here's more about your house"
#provide a list of students belonging to the house?

  end

  # class Prac::Cli
  
  #   def greet  
  #     puts "\nWelcome to Hogwarts!\n"
  #     puts "\nLet's figure out which House is for you. What's your name?"
  #     Prac
  #     name_input = gets.strip
  #       if name_input == "Harry Potter"
  #         puts "The famous Harry Potter!"
  #       else
  #         puts "Nice to meet you, #{name_input}! Tell me, what quality most describes you?"
  #       end
  #     input = gets.strip
  #     Prac::Api.new.get_houses
  #     binding.pry
  #   end
    
  #   def list_all_values
      
  #   end
    
    
    
  # end