class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :home
      t.string :mobile

      t.timestamps
    end
  end
end
