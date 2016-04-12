require_relative "employee.rb"
require_relative "salaried_pay.rb"

class SalariedEmployee < Employee
    include SalariedPay
    def initialize(name, email, salary)
        @name = name
        @email = email
        @salary = salary
    end

    def calculate_salary
        salaried_pay(@salary)
    end
end