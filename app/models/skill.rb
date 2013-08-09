class Skill < ActiveRecord::Base
  has_many :skill_users
  has_many :users, through: :skill_users

  validates_uniqueness_of :name
end
