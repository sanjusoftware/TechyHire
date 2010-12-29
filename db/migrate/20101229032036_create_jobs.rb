class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :position
      t.string :location
      t.text :description
      t.integer :openings
      t.text :desired_skills
      t.integer :desired_experience
      t.string :status
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
