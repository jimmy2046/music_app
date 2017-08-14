class AddUserToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :user, foreign_key: true
  end
    add_index :comments, [:user_id, :created_at]    
end
