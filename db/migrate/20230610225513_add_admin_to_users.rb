class AddAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean, default: false
    # This adds a new column (admin) to the users table with a default value of (false). 
    # Data type is BOOLEAN
  end
end
