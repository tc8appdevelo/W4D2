require_relative "employee.rb"

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss, employees)
        super(name, title, salary, boss)
        @employees = employees 
    end

    def total_employees_salary
        total_salary = 0

        @employees.each do |employee|
            if employee.is_a?(Manager)
                total_salary += employee.total_employees_salary
            end
            total_salary += employee.salary
        end
        total_salary
    end

    def bonus(mult)
        total_employees_salary * mult
    end

end
david = Employee.new("David", "TA", 10000, "darren")
shawna = Employee.new("Ned", "TA", 12000, "darren")
darren = Manager.new("Darren", "TA Manager", 78000, "ned", [shawna, david])
ned = Manager.new("Ned", "Founder", 1000000, nil, [darren])