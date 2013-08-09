class AddUniqueIndex < ActiveRecord::Migration
  def change
    add_index(:skill_users, [:user_id, :skill_id], {unique: true})
  end
end
