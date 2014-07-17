# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..50).each do
  Company.create(name: Faker::Commerce.product_name)
end

(1..50).each do |company_id|
  (1..30).each do
    Employee.create(company_id: company_id, name: Faker::Name.name)
  end
end

(1..1500).each do |employee_id|
  (1..5).each do
    Interaction.create(employee_id: employee_id, task: Faker::Lorem.sentence, \
      complete: false, response: false, url: Faker::Internet.url('vsnap.com'))
  end
end