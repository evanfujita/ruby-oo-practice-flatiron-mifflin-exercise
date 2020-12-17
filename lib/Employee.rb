class Employee

    attr_reader :name, :salary, :manager_name, :employees
    attr_accessor :manager

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        self.class.all << self
    end

    def self.all
        @@all
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(salary)
        self.all.select {|employee| employee.salary > salary}
    end

    def self.find_by_department(department)
        Manager.all.find {|manager| manager.department == department}.employees.first.name
    end

    def tax_bracket
        self.class.all.select do|employee| 
            (employee.salary - self.salary < 1000)
        end
    end

end
