class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :ext
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
