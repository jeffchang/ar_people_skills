class User < ActiveRecord::Base
  has_many :skill_users
  has_many :skills, through: :skill_users

  def proficiency_for
    proficiency
  end

  def set_proficiency_for(rating)
    self.proficiency = (rating)
  end

end
