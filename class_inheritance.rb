class Employee
    attr_accessor :name, :title, :salary, :boss
    def initialize(name, salary, title, boss)
        @name = name
        @title = title
        @salary = salary
        self.boss = boss
    end

    def bonus(multiplier)
        @salary * multiplier
    end

    def boss=(boss)
        @boss = boss
        boss.add_e(self) if !boss.nil?
        boss
    end
end

class Manager < Employee
    attr_accessor :employees
    def initialize(name, title, salary, boss)
        super
        @employees = []
    end
    
    def sub_salaries
        total = 0
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                total += employee.sub_salaries + employee.salary
            else
                total += employee.salary
            end
        end
        return total
    end

    def bonus(multiplier)
        self.sub_salaries * multiplier
    end

    def add_e(employee)
        @employees << employee
        employee
    end

end

ned = Manager.new("Ned", 1000000, "Founder", nil)
darren = Manager.new("Darren", 78000, "ta manager", ned)
shawa = Employee.new("Shawa", 12000, "ta", darren)
david = Employee.new("David", 10000, "ta", darren)

p ned.bonus(5) 
p darren.bonus(4)
p david.bonus(3)