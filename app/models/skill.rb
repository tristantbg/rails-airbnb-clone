class Skill < ApplicationRecord
  @allowed_skills = ['Angular JS', 'Ruby', 'JavaScript']
  belongs_to :user

  validates :name, :inclusion => { :in => @allowed_skills }
end
