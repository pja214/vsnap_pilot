class AddPilotMetricToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :pilot_metric, :string
  end
end
