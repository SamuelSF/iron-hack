require_relative "salaried_pay.rb"
require_relative "hourly_pay.rb"
require_relative "employee.rb"

class MultiPaymentEmployee < Employee
    include HourlyPay
    include SalariedPay
    def initialize(name, email, salary, hourly_wage, hours_worked)
        @name = name
        @email = email
        @salary = salary
        @hourly_wage = hourly_wage
        @hours_worked = hours_worked
    end

    def calculate_salary
        if @hours_worked > 40
            salaried_pay(@salary) + hourly_pay(@hourly_wage, @hours_worked - 40)
        else
            salaried_pay(@salary)
        end
    end
end