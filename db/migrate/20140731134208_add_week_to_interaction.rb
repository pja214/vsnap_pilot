class AddWeekToInteraction < ActiveRecord::Migration
  def change
    add_column :interactions, :week, :integer
  end
end
