class AddUniqueIndex < ActiveRecord::Migration
  def change
    add_index :skill_users [:user, :skill], :unique => true
    add_column :skill_users, :proficiency, :default => 0
  end
end
