require_relative "hourly_pay.rb"
require_relative "employee.rb"

class HourlyEmployee < Employee
    include HourlyPay
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
        hourly_pay(@hourly_rate, @hours_worked)
    end
end