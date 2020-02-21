require_relative 'employee'

class Location

    attr_reader :restaurant, :address, :rent

    @@all = []

    def initialize(restaurant, address, rent)
        @restaurant = restaurant
        @address = address
        @rent = rent
        @@all << self
    end

    def to_s
        "<#{self.class.name} - #{restaurant}, #{address}>"
    end

    def self.all_addresses
        self.all.map {|location| location.address}
    end

    def hire_employee(name, pay)
        Employee.new(self, name, pay)
    end

    def self.all
        @@all
    end

end
