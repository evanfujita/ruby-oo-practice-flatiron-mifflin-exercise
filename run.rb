require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


april = Manager.new("April", "Kitchen", 32)
jim = Manager.new("Jim", "FOH", 37)

jim.hire_employee("Ivan", 90000)
jim.hire_employee("Ally", 80000)
jim.hire_employee("Eric", 80000)
april.hire_employee("Evan", 90000)
april.hire_employee("Mad", 80000)

binding.pry
puts "done"
