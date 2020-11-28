require 'yaml'

class Database

  attr_accessor :person, :animal_stat, :time

def initialize
   @person  = 0
   @animal_stat ="good"
   @time=Time.new
end


def save
hash={}
hash[@time]=@person
File.open("person.yml","a+"){|person| person.write (hash.to_yaml) }

end
end
