class AddTypeFirstNameLastNamePhoneToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :type, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string

  end

  def self.down
    remove_column :users, :type
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :phone
  end
end
