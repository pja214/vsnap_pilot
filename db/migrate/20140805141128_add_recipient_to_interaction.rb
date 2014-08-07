class AddRecipientToInteraction < ActiveRecord::Migration
  def change
    add_column :interactions, :recipient, :string
  end
end
