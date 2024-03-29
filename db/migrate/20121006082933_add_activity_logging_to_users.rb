class AddActivityLoggingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_login_at, :datetime
    add_column :users, :last_logout_at, :datetime
    add_column :users, :last_activity_at, :datetime
    add_column :users, :activity_timeout, :integer
  end
end
