class CreateSkillUsersTable < ActiveRecord::Migration
  def change
    create_table :skill_users do |t|
      t.belongs_to :skill
      t.belongs_to :user
      t.integer :proficiency

      t.timestamps
  end
end
