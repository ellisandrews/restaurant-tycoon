require_relative 'location'
require_relative 'employee'

class Restaurant

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def to_s
        "<#{self.class.name} - #{name.capitalize}>"
    end

    def locations
        Location.all.select {|location| location.restaurant == self}
    end
    
    def employees
        Employee.all.select {|employee| employee.location.restaurant == self}
    end

    def create_location(address, rent)
        Location.new(self, address, rent)
    end

    def total_rent
        locations.sum {|location| location.rent}
    end

    def total_pay
        employees.sum {|employee| employee.pay}
    end

    def total_expenses
        total_pay + total_rent
    end

    def self.all
        @@all
    end

end
