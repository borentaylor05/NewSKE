class AddIndexToContents < ActiveRecord::Migration
  def change
  	add_index :contents, :api_id
  	add_index :contents, :doc_id
  end
end
