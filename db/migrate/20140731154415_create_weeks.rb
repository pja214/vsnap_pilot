class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :number
      t.text :comments, :limit => nil

      t.timestamps
    end
  end
end
