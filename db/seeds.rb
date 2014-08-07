# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..5).each do
  Company.create(name: Faker::Commerce.product_name, pilot_metric: Faker::Company.bs)
end

(1..5).each do |company_id|
  (1..4).each do
    Employee.create(company_id: company_id, name: Faker::Name.name)
  end
end

(1..20).each do |employee_id|
  (1..3).each do |number|
    Week.create(employee_id: employee_id, number: number, comments: Faker::Lorem.paragraph)
  end
end

(1..60).each do |week_id|
  (1..5).each do
    Interaction.create(week_id: week_id, pilot_metric: random_bool = [true, false].sample, \
      url: Faker::Internet.url, comments: Faker::Lorem.sentence, \
      viewed: random_bool = [true, false].sample, response_sentiment: false, \
      response_other: false, recipient: Faker::Name.name)
  end
end