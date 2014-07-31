class Interaction < ActiveRecord::Base
  validates :task, :employee_id, presence: true
  validates :employee_id, numericality: { only_integer: true, greater_than: 0}
  validate :complete_before_response, on: :create
  belongs_to :employee

  def complete_before_response
    if !self.complete && self.response
      errors.add(:complete, "must be selected in order to receive a response")
    end
  end
end
