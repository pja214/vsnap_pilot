class RemoveWeekFromInteraction < ActiveRecord::Migration
  def change
    remove_column :weeks, :week
  end
end
