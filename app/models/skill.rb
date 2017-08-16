class Skill < ApplicationRecord
  SKILLS = ['Angular JS', 'Ruby', 'JavaScript', 'Front', 'Rails']

  belongs_to :user

  validates :name, presence: true, :inclusion => { :in => SKILLS }
end
