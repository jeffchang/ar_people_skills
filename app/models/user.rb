class User < ActiveRecord::Base
  has_many :skill_users
  has_many :skills, through: :skill_users

  def proficiency_for(query)
    skills.each do |skill|
      return SkillUser.where("user_id = ? and skill_id = ?", self, skill).first.proficiency if skill == query
    end
  end

  def set_proficiency_for(query, rating)
    skills.each do |skill|
      if skill == query
        the_skill = SkillUser.where("user_id = ? and skill_id = ?", self, skill).first
        the_skill.proficiency = rating
        the_skill.save
      end
    end
  end

end
