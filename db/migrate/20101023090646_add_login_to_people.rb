class AddLoginToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :login, :string
  end

  def self.down
    remove_column :people, :login
  end
end
