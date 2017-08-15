class Skill < ApplicationRecord
  def self.allowed_skills
    ['Angular JS', 'Ruby', 'JavaScript', 'Front']
  end

  belongs_to :user

  validates :name, :inclusion => { :in => self.allowed_skills }
end
