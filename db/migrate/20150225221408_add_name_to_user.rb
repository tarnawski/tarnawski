class AddNameToUser < ActiveRecord::Migration
  def self.up
 add_column :users, :firstname, :string
 add_column :users, :lastname, :string


  end
end
