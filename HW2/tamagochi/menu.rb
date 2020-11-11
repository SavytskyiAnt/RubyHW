require_relative 'Animal'   # Подключаем файл с классом "Animal"
require_relative 'Dog'      # Подключаем файл с классом "Dog"
require_relative 'Console'  # Подключаем файл с классом "Console"
require_relative 'Hamster'  # Подключаем файл с классом "Hamster"

animal = Animal.new('heppy')
print = Console.new
print.welcome

loop do
  print.level_desires
end
