class AddIndexToUsers < ActiveRecord::Migration
  def self.up
    add_index :users, :username,                :unique => true
  end

  def self.down
  end
end
