require_relative "lib/payroll.rb"
require_relative "lib/employee.rb"
require_relative "lib/multi_payment_employee.rb"
require_relative "lib/salaried_employee.rb"
require_relative "lib/hourly_employee.rb"
require_relative "lib/hourly_pay.rb"
require_relative "lib/salaried_pay.rb"

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

employees = [josh, nizar, ted]

payroll = Payroll.new(employees)

paid_out = payroll.pay_employees

payments = paid_out[0]

total_paid = paid_out[1]

payments.each do |payment|
    puts "#{payment[0].name} was paid $#{payment[1]} this week."
end

puts "The total paid was $#{total_paid}"

employees.each do |employee|
    payroll.notify_employee(employee)
end