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

    attr_reader :employees

    def initialize(name, title, salary, boss)
        super 
        @employees = []
    end

    def add_employee(other_employee)
        # if other_employee.boss == self.name
            @employees << other_employee
            return other_employee
        # end
    end


    def bonus(multiplier)
        total = 0

        @employees.each do |employee|
            total += employee.salary
        end

        total * multiplier
    end

end

Ned = Employee.new("Ned", 'founder', 1000, nil)
Shawna = Employee.new('Shawna', 'TA', 12000, 'Darren')
David = Employee.new('David', 'TA', 10000, 'Darren')
Darren = Manager.new('Darren', 'TA manager', 78000, 'Ned')
Darren.add_employee(Shawna)
Jhon = Employee.new('David', 'TA', 10000, 'Darren')
Darren.add_employee(Jhon)
p Ned
p Shawna
p David
p Darren.employees

