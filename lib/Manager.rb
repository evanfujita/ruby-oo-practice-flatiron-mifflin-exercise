require 'pry'

class Manager

    attr_reader :name, :department, :age, :employees
    attr_accessor :manager

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        self.class.all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        @name = name
        @salary = salary
        employee = Employee.new(name, salary)
        employee.manager = self
        @employees << employee
    end

    def self.all_departments
        self.all.select {|manager| manager.department}
    end

    def self.average_age
        x = 0
        self.all.select {|manager| x += manager.age}
        x / self.all.count.to_f
    end

end


