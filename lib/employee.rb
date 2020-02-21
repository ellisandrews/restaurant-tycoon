class Employee
    
    attr_reader :location, :name, :pay

    @@all = []

    def initialize(location, name, pay)
        @location = location
        @name = name
        @pay = pay
        @@all << self
    end

    def to_s
        "<#{self.class.name} - #{location}, #{name.capitalize}>"
    end

    def self.all
        @@all
    end
    
    def self.average_pay
        employee_pays = self.all.map { |employee| employee.pay }
        total_employee_pays = employee_pays.inject { |sum, pay| sum + pay }
        total_employee_pays.to_f / employee_pays.length
    end
end
