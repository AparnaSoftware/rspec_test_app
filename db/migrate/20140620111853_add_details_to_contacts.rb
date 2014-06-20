class AddDetailsToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :firstname, :string
    add_column :contacts, :lastname, :string
  end
end
