class ChangeResponse < ActiveRecord::Migration
  def change
    remove_column :interactions, :response
    add_column :interactions, :response_sentiment, :boolean
    add_column :interactions, :response_other, :boolean
    rename_column :interactions, :complete, :viewed
  end
end
