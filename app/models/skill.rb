class Skill < ApplicationRecord
  def self.allowed_skills
    ['Angular JS', 'Ruby', 'JavaScript', 'Front', 'Rails']
  end

  belongs_to :user

  validates :name, :inclusion => { :in => self.allowed_skills }
end
