class AddEmployeeIdToWeek < ActiveRecord::Migration
  def change
    add_column :weeks, :employee_id, :integer
  end
end
