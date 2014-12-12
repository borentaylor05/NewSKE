class AddClientIdToUpdate < ActiveRecord::Migration
  def change
  	add_column :updates, :client_id, :integer
  end
end
