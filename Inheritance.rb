class Employee
    attr_reader :salary, :name, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end



end


class Manager < Employee

    def initialize
        super
        @employees = []
    end

    def add_employee
        if !boss.nil? && name == self.name
            @employees << Employee
        end
    end


    def bonus(multiplier)
        total = 0

        @employees.each do |employee|
            total += employee.salary
        end

        total * multiplier
    end

end

Ned = Manager.new("Ned", 'founder', 1000, nil)
Shawna = Manager.new('Shawna', 'TA', 12000, 'Darren')
David = Manager.new('David', 'TA', 10000, 'Darren')
Darren = Manager.new('Darren', 'TA manager', 78000, 'Ned')
