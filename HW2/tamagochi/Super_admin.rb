
class Super_admin < Console

  attr_accessor :role

    def initialize (role)

      @role = role

    end

    def do_it(animal)
                    def self.menu
                      cls

                     puts "                                    its menu"
                     puts "your status #{@role}"
                     puts "enter number of command:"
                     puts "
                            change want_sleep  - 1
                            change want_toilet - 2
                            change want_water  - 3
                            change want_play   - 4
                            exit               - 5
                            продолжить игру    - 6
                            change login       - 7
                            change name of pet - 7
                            kill pet           - 8
                            сброс всех желаний - 9
                            "
                        variant
                      end

       super
    end


    def variant
      while click = gets.chomp
        case click
        when ""
          puts "Empty line, try again: "
        when "1"
          puts "you 1 "
        when "2"
          puts "you 2 "
        when "3"
          puts "you 4 "
        when "5"
          puts "you 5 "
        when "6"
          puts "you 6 "
        when "7"
          puts "you 7 "
        when "8"
          puts "you 8 "
        when "9"
          puts "you 9 "
        when "10"
          puts "you 10 "
        end
      end
    end



























end
