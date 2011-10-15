class CreateHelpdbs < ActiveRecord::Migration
  def self.up
    create_table :helpdbs do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :helpdbs
  end
end
