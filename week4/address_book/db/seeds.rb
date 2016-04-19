# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Contact.create(name: "Billy", address:"123 Fake St" , phone_number:"904-555-0198" , email_address:"Billy@host.com")
Contact.create(name: "Willy", address:"456 Fraud Ave" , phone_number: "904-555-0134" , email_address:"Willy@host.com")
Contact.create(name: "Jilly", address:"789 Nonexistent Ln" , phone_number: "904-555-0174" , email_address:"Jilly@host.com")
Contact.create(name: "Milly", address:"147 Nowhere Ct" , phone_number: "904-555-0121", email_address:"Milly@host.com")