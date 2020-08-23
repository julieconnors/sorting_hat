class SortingHat::CLI

  def call
    greet
    get_house_info
    get_user_values
    sort_student
    menu_after_sort
  end
  
  def greet  
    puts "\nWelcome to Hogwarts!"
    sleep(1)
    puts "\nLet's figure out which house is for you."
    sleep(1)
  end

  def get_house_info
    SortingHat::API.new.get_houses
  end
 
  def get_user_values
    puts "\nPlease select the number for the quality that best describes you:\n"
    sleep(2)
    SortingHat::Houses.display_values.each.with_index(1) do |value, index|
      puts "#{index}. #{value}"
    end
      
    @input = gets.strip.to_i
      
    until @input.between?(1, SortingHat::Houses.display_values.size)
      puts "\nPlease select a number between 1 and 16:"
      @input = gets.strip.to_i
    end
  end
   
  def sort_student
    value = SortingHat::Houses.find_value_by_input(@input)
    @house = SortingHat::Houses.find_by_value(value)
    sleep(1)
    puts "\nHmmm.."
    sleep(1)
    puts "\nIt better be #{@house.name}!"
  end

  def menu_after_sort
    sleep(2)
    puts "\nPlease select a number to find out more about #{@house.name} or exit:\n"
    puts "1. Head of House"
    puts "2. House colors"
    puts "3. House ghost"
    puts "4. Founder"
    puts "5. House mascot"
    puts "6. House members"
    puts "7. exit"
      
    @selection = gets.strip.to_i
      
    until @selection.between?(1, 7)
      puts "\nPlease select a number between 1 and 7:"
      @selection = gets.strip.to_i
    end
    display_house_info
  end

  def display_house_members
    SortingHat::API.new.get_characters
    SortingHat::Characters.find_by_house(@house.name)
  end

  def display_house_info
    if @selection != 7
      case @selection
      when 1
        puts ""
        puts @house.headOfHouse
      when 2
        puts ""
        puts @house.colors
      when 3
        puts ""
        puts @house.houseGhost
      when 4
        puts ""
        puts @house.founder
      when 5
        puts ""
        puts @house.mascot
      when 6 
        display_house_members
      end
      menu_after_sort
    else
      puts "\nGood luck!"
      exit
    end
  end
end