class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.integer :employee_id
      t.string :task
      t.boolean :complete
      t.boolean :response
      t.string :url
      t.string :comments

      t.timestamps
    end
  end
end
