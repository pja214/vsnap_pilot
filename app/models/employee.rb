class Employee < ActiveRecord::Base
  validates :name, presence: true
  validates :company_id, presence: true
  belongs_to :company
  has_many :interactions
end
