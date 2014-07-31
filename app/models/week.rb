class Week < ActiveRecord::Base
  validates :employee_id, presence: true
  validates :number, presence: true
  belongs_to :employee
  has_many :interactions
end
