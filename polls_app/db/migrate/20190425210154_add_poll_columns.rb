class AddPollColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :polls, :author_id, :integer, null: false
  
  end
end
