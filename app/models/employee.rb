class Employee < ActiveRecord::Base
  validates :name, presence: true
  validates :company_id, presence: true
  validates :company_id, numericality: { only_integer: true, greater_than: 0 }
  belongs_to :company
  has_many :interactions
end
