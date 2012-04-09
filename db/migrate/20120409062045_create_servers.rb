class CreateServers < ActiveRecord::Migration
  def self.up
    create_table :servers do |t|
      t.boolean :status
      t.string :place
      t.string :name
      t.string :model
      t.text :features
      t.string :serial_number
      t.date :date_adq
      t.string :ip
      t.string :dir_ilo
      t.integer :hard_disks
      t.string :user
      t.string :os
      t.string :lic_ilo
      t.timestamps
    end
  end

  def self.down
    drop_table :servers
  end
end
