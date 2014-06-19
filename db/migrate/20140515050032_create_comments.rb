class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
