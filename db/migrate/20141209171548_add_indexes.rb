class AddIndexes < ActiveRecord::Migration
  def change
  	add_index :users, :jive_id
  	add_index :users, :employee_id
  	add_index :users, :client_id
  	add_index :clients, :name
  	add_index :contents, :api_id
  	add_index :contents, :doc_id
  end
end
