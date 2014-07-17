class Interaction < ActiveRecord::Base
  validates :task, :employee_id, presence: true
  validates :employee_id, numericality: { only_integer: true, greater_than: 0}
  belongs_to :employee
end
