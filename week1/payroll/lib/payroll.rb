require_relative "employee.rb"
require_relative "multi_payment_employee.rb"
require_relative "salaried_employee.rb"
require_relative "hourly_employee.rb"

class Payroll
    def initialize(employees)
        @employees = employees
    end

    def notify_employee(employee)
        puts "An email was sent to #{employee.name} at #{employee.email}"
    end

    def pay_employees
        payments = []
        @employees.each do |employee|
            payments << [employee, employee.calculate_salary]
        end
        total_paid = payments.reduce(0.0) do |total, payment|
            total + payment[1]
        end

        [payments, total_paid]
    end
end