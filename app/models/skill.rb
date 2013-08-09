class Skill < ActiveRecord::Base
  has_many :skill_users
  has_many :users, through: :skill_users

  validates_uniqueness_of :name

  def user_with_proficiency(rating)
    SkillUser.where("skill_id = ? and proficiency = ?", self.id, rating).first.user
  end

end
