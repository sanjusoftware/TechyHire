class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :user_id
      t.string :line1
      t.string :line2
      t.string :line3
      t.string :country
      t.string :state
      t.string :zipcode

      t.references :addressable, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
