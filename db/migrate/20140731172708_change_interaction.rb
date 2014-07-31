class ChangeInteraction < ActiveRecord::Migration
  def change
    remove_column :interactions, :employee_id
    add_column :interactions, :week_id, :integer
  end
end
