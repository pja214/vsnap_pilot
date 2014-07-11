class Interaction < ActiveRecord::Base
  validates :task, :employee_id, presence: true
  belongs_to :employee
end
