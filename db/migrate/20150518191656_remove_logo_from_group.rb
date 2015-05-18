class RemoveLogoFromGroup < ActiveRecord::Migration
  def change
    remove_column :groups, :logo
  end
end
