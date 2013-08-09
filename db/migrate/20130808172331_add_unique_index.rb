class AddUniqueIndex < ActiveRecord::Migration
  def change
    add_index :skill_users [:user, :skill], :unique => true
  end
end
