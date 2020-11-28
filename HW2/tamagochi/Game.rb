require_relative 'Console'
require_relative 'Visitor.rb'
require_relative 'Super_admin.rb'
require_relative 'Admin.rb'
require_relative 'Login.rb'
require_relative 'Animal'
require_relative 'Dog'
require_relative 'Create_database.rb'

keys = {super_admin:{anton:"1111",vasia:"1234",petya:"5432"},
        admin:{artyr:"2222",nikolay:"3456",hren:"0987"},
        visitor:{natalia:"3333",viktoria:"4567",taras:"8765"}}

animal = Animal.new('heppy')
newgame = Console.new

 role = login(keys)

 newSave = Database.new
 newSave.person = role
 newSave.save


def new_person(role)
  case role[:status]
    when :super_admin
    @person = Super_admin.new(role)
    when :admin
    @person = Admin.new(role)
    when :visitor
    @person = Visitor.new(role)
  end
end

new_person(role)

        @person.welcome
        loop do
          @person.level_desires
        end
