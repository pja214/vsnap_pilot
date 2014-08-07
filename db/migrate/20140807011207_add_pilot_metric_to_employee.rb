class AddPilotMetricToEmployee < ActiveRecord::Migration
  def change
    remove_column :interactions, :task
    add_column :interactions, :pilot_metric, :boolean
  end
end
