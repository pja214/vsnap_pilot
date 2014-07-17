FactoryGirl.define do
  factory :interaction do
    employee_id 1
    task "Happy Birthday"
    complete true
    response false
    url "http://www.example.com/857284"
    comments "Needs to smile more."
  end
end