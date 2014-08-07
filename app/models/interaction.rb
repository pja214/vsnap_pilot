class Interaction < ActiveRecord::Base
  validates :week_id, numericality: { only_integer: true, greater_than: 0}
  belongs_to :week
end
