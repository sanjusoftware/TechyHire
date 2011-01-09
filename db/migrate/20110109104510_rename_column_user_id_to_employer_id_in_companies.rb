class RenameColumnUserIdToEmployerIdInCompanies < ActiveRecord::Migration
  def self.up
    rename_column :companies, :user_id, :employer_id
  end

  def self.down
    rename_column :companies, :employer_id, :user_id
  end
end
